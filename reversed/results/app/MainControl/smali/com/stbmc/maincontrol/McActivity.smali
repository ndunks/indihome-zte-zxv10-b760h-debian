.class public Lcom/stbmc/maincontrol/McActivity;
.super Landroid/app/Activity;
.source "McActivity.java"


# static fields
.field public static final HAVE_NO_BUTTON_NDIALOG:I = 0x0

.field public static final HAVE_ONE_BUTTON_NDIALOG:I = 0x1

.field public static final HAVE_TWO_BUTTON_NDIALOG:I = 0x2

.field private static final MC_POST_EVENT:Ljava/lang/String; = "com.android.mc.postevent"

.field public static final STB_DIALOG_HIDE:Ljava/lang/String; = "com.StbMc.DIALOG_HIDE"

.field private static mcAct:Lcom/stbmc/maincontrol/McActivity;


# instance fields
.field private iDialogStyle:I

.field private iMessageId:I

.field private m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

.field protected stopActivityReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/stbmc/maincontrol/McActivity;->mcAct:Lcom/stbmc/maincontrol/McActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    .line 30
    iput v1, p0, Lcom/stbmc/maincontrol/McActivity;->iDialogStyle:I

    .line 31
    iput v1, p0, Lcom/stbmc/maincontrol/McActivity;->iMessageId:I

    .line 87
    new-instance v0, Lcom/stbmc/maincontrol/McActivity$1;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/McActivity$1;-><init>(Lcom/stbmc/maincontrol/McActivity;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->stopActivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/McActivity;)Lcom/stbmc/maincontrol/CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/McActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/McActivity;Lcom/stbmc/maincontrol/CustomDialog;)Lcom/stbmc/maincontrol/CustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/McActivity;
    .param p1, "x1"    # Lcom/stbmc/maincontrol/CustomDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    return-object p1
.end method

.method static synthetic access$100()Lcom/stbmc/maincontrol/McActivity;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/stbmc/maincontrol/McActivity;->mcAct:Lcom/stbmc/maincontrol/McActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/stbmc/maincontrol/McActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/McActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/stbmc/maincontrol/McActivity;->iMessageId:I

    return v0
.end method

.method public static actionToMActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialogInfo"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget-object v1, Lcom/stbmc/maincontrol/McActivity;->mcAct:Lcom/stbmc/maincontrol/McActivity;

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/stbmc/maincontrol/McActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialogInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private convertHintInfoForComm(I)Ljava/lang/String;
    .locals 1
    .param p1, "messageID"    # I

    .prologue
    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 324
    const-string v0, ""

    :goto_0
    return-object v0

    .line 310
    :sswitch_0
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :sswitch_1
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :sswitch_2
    const v0, 0x7f05008d

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :sswitch_3
    const v0, 0x7f05008e

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :sswitch_4
    const v0, 0x7f050091

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :sswitch_5
    const v0, 0x7f050090

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :sswitch_6
    const v0, 0x7f05008f

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x6a -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x4b2 -> :sswitch_5
        0x4b3 -> :sswitch_6
    .end sparse-switch
.end method

.method private convertHintInfoForNonSH(I)Ljava/lang/String;
    .locals 4
    .param p1, "messageID"    # I

    .prologue
    const v2, 0x7f05002c

    .line 252
    const-string v0, ""

    .line 253
    .local v0, "code":Ljava/lang/String;
    const-string v1, ""

    .line 255
    .local v1, "info":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 300
    const-string v2, ""

    .line 304
    :goto_0
    return-object v2

    .line 260
    :sswitch_0
    const-string v0, "1401"

    .line 261
    const v2, 0x7f05002a

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050005

    .line 304
    invoke-virtual {p0, v3}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 264
    :sswitch_1
    const-string v0, "1402"

    .line 265
    const v2, 0x7f05002b

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    goto :goto_1

    .line 268
    :sswitch_2
    const-string v0, "1403"

    .line 269
    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    goto :goto_1

    .line 272
    :sswitch_3
    const-string v0, "1903"

    .line 273
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    goto :goto_1

    .line 276
    :sswitch_4
    const-string v0, "1305"

    .line 277
    const v2, 0x7f050026

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    goto :goto_1

    .line 280
    :sswitch_5
    const-string v0, "1404"

    .line 281
    const v2, 0x7f05002d

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    goto :goto_1

    .line 284
    :sswitch_6
    const-string v0, "1403"

    .line 285
    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    goto :goto_1

    .line 288
    :sswitch_7
    const-string v0, "1902"

    .line 289
    const v2, 0x7f050034

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    goto :goto_1

    .line 292
    :sswitch_8
    const-string v0, "1901"

    .line 293
    const v2, 0x7f050030

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    goto :goto_1

    .line 296
    :sswitch_9
    const-string v0, "1306"

    .line 297
    const v2, 0x7f050027

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    goto/16 :goto_1

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x71 -> :sswitch_3
        0x72 -> :sswitch_4
        0x73 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x76 -> :sswitch_8
        0x51a -> :sswitch_9
    .end sparse-switch
.end method

.method private convertHintInfoForSH(I)Ljava/lang/String;
    .locals 4
    .param p1, "messageID"    # I

    .prologue
    const v2, 0x7f05002c

    .line 196
    const-string v0, ""

    .line 197
    .local v0, "code":Ljava/lang/String;
    const-string v1, ""

    .line 199
    .local v1, "info":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 244
    const-string v2, ""

    .line 248
    :goto_0
    return-object v2

    .line 204
    :sswitch_0
    const-string v0, "0005"

    .line 205
    const v2, 0x7f05002a

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050005

    .line 248
    invoke-virtual {p0, v3}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 208
    :sswitch_1
    const-string v0, "0008"

    .line 209
    const v2, 0x7f05002b

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    goto :goto_1

    .line 212
    :sswitch_2
    const-string v0, "0006"

    .line 213
    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    goto :goto_1

    .line 216
    :sswitch_3
    const-string v0, "0012"

    .line 217
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    goto :goto_1

    .line 220
    :sswitch_4
    const-string v0, "0013"

    .line 221
    const v2, 0x7f050026

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    goto :goto_1

    .line 224
    :sswitch_5
    const-string v0, "0007"

    .line 225
    const v2, 0x7f05002d

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    goto :goto_1

    .line 228
    :sswitch_6
    const-string v0, "0006"

    .line 229
    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    goto :goto_1

    .line 232
    :sswitch_7
    const-string v0, "0011"

    .line 233
    const v2, 0x7f050034

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    goto :goto_1

    .line 236
    :sswitch_8
    const-string v0, "0010"

    .line 237
    const v2, 0x7f050030

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    goto :goto_1

    .line 240
    :sswitch_9
    const-string v0, "0001"

    .line 241
    const v2, 0x7f050027

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    goto/16 :goto_1

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x71 -> :sswitch_3
        0x72 -> :sswitch_4
        0x73 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x76 -> :sswitch_8
        0x51a -> :sswitch_9
    .end sparse-switch
.end method

.method public static native postEvent(II)V
.end method


# virtual methods
.method public SendDialogResult(II)V
    .locals 6
    .param p1, "messageId"    # I
    .param p2, "result"    # I

    .prologue
    .line 186
    const-string v2, "============>SendDialogResult: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mc.postevent"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "MessageId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v2, "Result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public ShowDialog(ILjava/lang/String;I)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "messageID"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 330
    const-string v1, ""

    .line 332
    .local v1, "message":Ljava/lang/String;
    const-string v3, "Common"

    const-string v4, "MarketCode"

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 333
    .local v0, "market":I
    const-string v3, "Message ID is %d and market code is %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    const/16 v3, 0x1f

    if-ne v3, v0, :cond_1

    .line 337
    invoke-direct {p0, p3}, Lcom/stbmc/maincontrol/McActivity;->convertHintInfoForSH(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    :goto_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-direct {p0, p3}, Lcom/stbmc/maincontrol/McActivity;->convertHintInfoForComm(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_0
    const-string v3, "Message is %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    const-string v3, "Message ID is not existed!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/ZLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0, v2, v2}, Lcom/stbmc/maincontrol/McActivity;->SendDialogResult(II)V

    .line 352
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    .line 353
    const/4 v2, -0x1

    .line 372
    :goto_1
    return v2

    .line 340
    :cond_1
    invoke-direct {p0, p3}, Lcom/stbmc/maincontrol/McActivity;->convertHintInfoForNonSH(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 367
    invoke-virtual {p0, v2, v2}, Lcom/stbmc/maincontrol/McActivity;->SendDialogResult(II)V

    .line 368
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    goto :goto_1

    .line 358
    :pswitch_0
    invoke-virtual {p0, p2, v1}, Lcom/stbmc/maincontrol/McActivity;->ShowNoButtonDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_1

    .line 361
    :pswitch_1
    invoke-virtual {p0, p2, v1}, Lcom/stbmc/maincontrol/McActivity;->ShowOneButtonDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_1

    .line 364
    :pswitch_2
    invoke-virtual {p0, p2, v1}, Lcom/stbmc/maincontrol/McActivity;->ShowTwoButtonDailog(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ShowNoButtonDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/stbmc/maincontrol/CustomDialog;

    const v1, 0x7f060003

    invoke-direct {v0, p0, v1}, Lcom/stbmc/maincontrol/CustomDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    .line 109
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->ALERT:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setDialogProperity(Ljava/lang/String;Ljava/lang/String;Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;)V

    .line 115
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->show()V

    .line 117
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    new-instance v1, Lcom/stbmc/maincontrol/McActivity$2;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/McActivity$2;-><init>(Lcom/stbmc/maincontrol/McActivity;)V

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 124
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected ShowOneButtonDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/stbmc/maincontrol/CustomDialog;

    const v1, 0x7f060003

    invoke-direct {v0, p0, v1}, Lcom/stbmc/maincontrol/CustomDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    .line 131
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->SURE:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setDialogProperity(Ljava/lang/String;Ljava/lang/String;Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;)V

    .line 136
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->show()V

    .line 138
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    new-instance v1, Lcom/stbmc/maincontrol/McActivity$3;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/McActivity$3;-><init>(Lcom/stbmc/maincontrol/McActivity;)V

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 149
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected ShowTwoButtonDailog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-nez v1, :cond_1

    .line 155
    const-string v1, "============>ShowTwoButtonDailog"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance v1, Lcom/stbmc/maincontrol/CustomDialog;

    const v2, 0x7f060003

    invoke-direct {v1, p0, v2}, Lcom/stbmc/maincontrol/CustomDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    .line 157
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->QUESTION:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setDialogProperity(Ljava/lang/String;Ljava/lang/String;Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;)V

    .line 163
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->show()V

    .line 165
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    new-instance v1, Lcom/stbmc/maincontrol/McActivity$4;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/McActivity$4;-><init>(Lcom/stbmc/maincontrol/McActivity;)V

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 182
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.StbMc.DIALOG_HIDE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/stbmc/maincontrol/McActivity;->stopActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/stbmc/maincontrol/McActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Lcom/stbmc/maincontrol/McActivity;->setContentView(I)V

    .line 59
    sput-object p0, Lcom/stbmc/maincontrol/McActivity;->mcAct:Lcom/stbmc/maincontrol/McActivity;

    .line 61
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/McActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "dialogInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_style"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/stbmc/maincontrol/McActivity;->iDialogStyle:I

    .line 64
    const-string v3, "dialog_message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/stbmc/maincontrol/McActivity;->iMessageId:I

    .line 66
    const-string v3, "Dialog style is %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/stbmc/maincontrol/McActivity;->iDialogStyle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget v3, p0, Lcom/stbmc/maincontrol/McActivity;->iDialogStyle:I

    const v4, 0x7f050098

    invoke-virtual {p0, v4}, Lcom/stbmc/maincontrol/McActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/stbmc/maincontrol/McActivity;->iMessageId:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/stbmc/maincontrol/McActivity;->ShowDialog(ILjava/lang/String;I)I

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->stopActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    sput-object v1, Lcom/stbmc/maincontrol/McActivity;->mcAct:Lcom/stbmc/maincontrol/McActivity;

    .line 81
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 83
    iput-object v1, p0, Lcom/stbmc/maincontrol/McActivity;->m_Dialog:Lcom/stbmc/maincontrol/CustomDialog;

    .line 85
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 73
    return-void
.end method
