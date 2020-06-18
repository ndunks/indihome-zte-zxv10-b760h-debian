.class public Lcom/stbmc/maincontrol/CustomBKDialog;
.super Landroid/app/Activity;
.source "CustomBKDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final Bundle_INFO:Ljava/lang/String; = "PostInfo"

.field public static final Bundle_RESULT:Ljava/lang/String; = "Result"

.field public static final DIALOG_HIDE:Ljava/lang/String; = "common.customdialog.DIALOG_HIDE"

.field public static final DIALOG_ID:Ljava/lang/String; = "dialogId"

.field public static final DLG_ONCLICK_CANCEL:I = 0x0

.field public static final DLG_ONCLICK_NEGATIVE:I = -0x2

.field public static final DLG_ONCLICK_NEUTRAL:I = -0x3

.field public static final DLG_ONCLICK_POSITIVE:I = -0x1

.field private static final HAVE_NO_BUTTON_DIALOG:I = 0x0

.field private static final HAVE_ONE_BUTTON_DIALOG:I = 0x1

.field private static final HAVE_THREE_BUTTON_DIALOG:I = 0x3

.field private static final HAVE_TWO_BUTTON_DIALOG:I = 0x2

.field public static final POST_EVENT:Ljava/lang/String; = "common.customdialog.POSTEVENT"

.field public static final RESULT_1ST_BUTTON:I = 0x1

.field public static final RESULT_2ND_BUTTON:I = 0x2

.field public static final RESULT_3RD_BUTTON:I = 0x3

.field public static final RESULT_NON_BUTTON:I = 0x0

.field public static final RESULT_RET_BUTTON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CustomBKDialog"

.field public static g_content_picuter:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected CloseDialogReceiver:Landroid/content/BroadcastReceiver;

.field private TAG_ID:I

.field private iTimems:I

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mTextField:Landroid/widget/TextView;

.field private myAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 79
    iput v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->TAG_ID:I

    .line 80
    iput v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->iTimems:I

    .line 82
    iput-object v1, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 86
    new-instance v0, Lcom/stbmc/maincontrol/CustomBKDialog$1;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CustomBKDialog$1;-><init>(Lcom/stbmc/maincontrol/CustomBKDialog;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/CustomBKDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomBKDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/CustomBKDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomBKDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentPicture"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .param p6, "positiveBtnText"    # Ljava/lang/CharSequence;
    .param p7, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "negativeBtnText"    # Ljava/lang/CharSequence;
    .param p9, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p10, "neutralBtnText"    # Ljava/lang/CharSequence;
    .param p11, "neutralListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 367
    const-string v1, "CustomBKDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-nez p1, :cond_0

    .line 370
    const-string v1, "CustomBKDialog"

    const-string v2, "context is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    .line 397
    :goto_0
    return-object v1

    .line 374
    :cond_0
    new-instance v0, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;

    invoke-direct {v0, p1}, Lcom/stbmc/maincontrol/CustomBuilderDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    .line 376
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 378
    :cond_1
    if-eqz p4, :cond_2

    .line 379
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 381
    :cond_2
    if-eqz p5, :cond_3

    .line 382
    invoke-virtual {v0, p5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    :cond_3
    if-eqz p7, :cond_4

    if-eqz p6, :cond_4

    .line 388
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    :cond_4
    if-eqz p9, :cond_5

    if-eqz p8, :cond_5

    .line 391
    invoke-virtual {v0, p8, p9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    :cond_5
    if-eqz p11, :cond_6

    if-eqz p10, :cond_6

    .line 394
    invoke-virtual {v0, p8, p9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 396
    :cond_6
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public static showCustomDialog(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "iTimems"    # I
    .param p3, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v2, "time_ms"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "content_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "one_button_text"    # Ljava/lang/String;
    .param p7, "two_button_text"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sput-object p3, Lcom/stbmc/maincontrol/CustomBKDialog;->g_content_picuter:Landroid/graphics/drawable/Drawable;

    .line 173
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 174
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public static showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "caller_context"    # Landroid/content/Context;
    .param p1, "TAG_ID"    # I
    .param p2, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;
    .param p6, "two_button_text"    # Ljava/lang/String;
    .param p7, "three_button_text"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v2, "tag_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v2, "dTitle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "dmessage"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "firstBtnText"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "secondBtnText"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "thirdBtnText"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method


# virtual methods
.method public SendDialogResult(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "result"    # I

    .prologue
    .line 315
    const-string v2, "CustomBKDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in SendDialogResult(),dialogId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v2, "CustomBKDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in SendDialogResult(),result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v2, "common.customdialog.POSTEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v1, "postInfo":Landroid/os/Bundle;
    const-string v2, "dialogId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v2, "Result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string v2, "PostInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method public createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 203
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomBKDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 205
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 206
    return-void
.end method

.method public createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "button_text"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomBKDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 212
    return-void
.end method

.method public createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "one_button_text"    # Ljava/lang/String;
    .param p5, "two_button_text"    # Ljava/lang/String;
    .param p6, "three_button_text"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p0

    move-object/from16 v8, p5

    move-object v9, p0

    move-object/from16 v10, p6

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomBKDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 229
    return-void
.end method

.method public createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p2, "content_picuter"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "one_button_text"    # Ljava/lang/String;
    .param p6, "two_button_text"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, p0

    move-object/from16 v8, p6

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/stbmc/maincontrol/CustomBKDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 220
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 343
    iget v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->TAG_ID:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/stbmc/maincontrol/CustomBKDialog;->SendDialogResult(II)V

    .line 344
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 345
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomBKDialog;->finish()V

    .line 346
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 327
    const-string v1, "CustomBKDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onclick dialog, which----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "butindex":I
    const/4 v1, -0x3

    if-ne v1, p2, :cond_1

    .line 330
    const/4 v0, 0x3

    .line 336
    :cond_0
    :goto_0
    iget v1, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->TAG_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->SendDialogResult(II)V

    .line 337
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 338
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomBKDialog;->finish()V

    .line 339
    return-void

    .line 331
    :cond_1
    const/4 v1, -0x2

    if-ne v1, p2, :cond_2

    .line 332
    const/4 v0, 0x2

    goto :goto_0

    .line 333
    :cond_2
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    const-string v1, "CustomBKDialog"

    const-string v2, "###====> onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomBKDialog;->showMyDialog()V

    .line 301
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    const-string v0, "CustomBKDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->CloseDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    .line 312
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 350
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 357
    :goto_0
    return v0

    .line 354
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 355
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_1
    invoke-super {p0, p3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public showMyDialog()V
    .locals 31

    .prologue
    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/CustomBKDialog;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 233
    .local v27, "intent":Landroid/content/Intent;
    const-string v2, "PostInfo"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v30

    .line 234
    .local v30, "postInfo":Landroid/os/Bundle;
    const-string v2, "btnnum"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 235
    .local v26, "i":I
    const-string v2, "tag_id"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->TAG_ID:I

    .line 236
    const-string v2, "time_ms"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->iTimems:I

    .line 237
    const-string v2, "dTitle"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "title":Ljava/lang/String;
    const-string v2, "dmessage"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "message":Ljava/lang/String;
    const-string v2, "CustomBKDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###===> TAG_ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->TAG_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    packed-switch v26, :pswitch_data_0

    .line 262
    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "notice"

    const-string v20, "the message"

    const-string v21, "OK"

    const-string v22, "Cancle"

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v22}, Lcom/stbmc/maincontrol/CustomBKDialog;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v24

    .line 269
    .local v24, "dialogWindow":Landroid/view/Window;
    const/16 v2, 0x11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/stbmc/maincontrol/CustomBKDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v28

    .line 271
    .local v28, "m":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    .line 272
    .local v23, "d":Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v29

    .line 273
    .local v29, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v9

    double-to-int v2, v2

    move-object/from16 v0, v29

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 274
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v9, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v9

    double-to-int v2, v2

    move-object/from16 v0, v29

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 277
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 281
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_0

    .line 283
    const-string v2, "CustomBKDialog"

    const-string v3, "###===> two button, myAlertDialog.getButton(-2).requestFocus()!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stbmc/maincontrol/CustomBKDialog;->myAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 289
    .end local v23    # "d":Landroid/view/Display;
    .end local v24    # "dialogWindow":Landroid/view/Window;
    .end local v28    # "m":Landroid/view/WindowManager;
    .end local v29    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 244
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/stbmc/maincontrol/CustomBKDialog;->createNoButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_1
    const-string v2, "firstBtnText"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 248
    .local v25, "ft":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v5, v6, v1}, Lcom/stbmc/maincontrol/CustomBKDialog;->createOneButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v25    # "ft":Ljava/lang/String;
    :pswitch_2
    const-string v2, "firstBtnText"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "wft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "wst":Ljava/lang/String;
    const/4 v3, 0x0

    sget-object v4, Lcom/stbmc/maincontrol/CustomBKDialog;->g_content_picuter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/stbmc/maincontrol/CustomBKDialog;->createTwoButtonDialog(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    .end local v7    # "wft":Ljava/lang/String;
    .end local v8    # "wst":Ljava/lang/String;
    :pswitch_3
    const-string v2, "firstBtnText"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 257
    .local v13, "tft":Ljava/lang/String;
    const-string v2, "secondBtnText"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 258
    .local v14, "tst":Ljava/lang/String;
    const-string v2, "thirdBtnText"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "ttt":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v9, p0

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v9 .. v15}, Lcom/stbmc/maincontrol/CustomBKDialog;->createThreeButtonDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    .end local v13    # "tft":Ljava/lang/String;
    .end local v14    # "tst":Ljava/lang/String;
    .end local v15    # "ttt":Ljava/lang/String;
    :cond_1
    const-string v2, "CustomBKDialog"

    const-string v3, "create dialog error, dialog is null, create dialog first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
