.class public Lcom/stbmc/maincontrol/McShowMsgBox;
.super Landroid/app/Activity;
.source "McShowMsgBox.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "McShowMsgBox"

.field private static builder:Lcom/stbmc/maincontrol/CustomDialog;

.field private static builder1:Lcom/stbmc/maincontrol/CustomDialog;

.field private static mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;


# instance fields
.field protected stopActivityReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    .line 35
    sput-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    .line 36
    sput-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Lcom/stbmc/maincontrol/McShowMsgBox$2;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/McShowMsgBox$2;-><init>(Lcom/stbmc/maincontrol/McShowMsgBox;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox;->stopActivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/stbmc/maincontrol/McShowMsgBox;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    return-object v0
.end method

.method static synthetic access$100()Lcom/stbmc/maincontrol/CustomDialog;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/stbmc/maincontrol/CustomDialog;)Lcom/stbmc/maincontrol/CustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomDialog;

    .prologue
    .line 32
    sput-object p0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    return-object p0
.end method

.method static synthetic access$200()Lcom/stbmc/maincontrol/CustomDialog;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/stbmc/maincontrol/CustomDialog;)Lcom/stbmc/maincontrol/CustomDialog;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomDialog;

    .prologue
    .line 32
    sput-object p0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    return-object p0
.end method

.method public static actionToShowMsgBoxActivity(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgboxInfo"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "McShowMsgBox"

    const-string v1, "============>come in  actionToShowMsgBoxActivity\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    if-eqz v0, :cond_2

    .line 42
    const-string v0, "McShowMsgBox"

    const-string v1, "============>to finish this activity\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 46
    sput-object v2, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    .line 48
    :cond_0
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 51
    sput-object v2, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    .line 53
    :cond_1
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McShowMsgBox;->finish()V

    .line 56
    :cond_2
    new-instance v0, Lcom/stbmc/maincontrol/McShowMsgBox$1;

    invoke-direct {v0, p0, p1}, Lcom/stbmc/maincontrol/McShowMsgBox$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McShowMsgBox$1;->start()V

    .line 84
    return-void
.end method


# virtual methods
.method protected ShowButtonMsgBox(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 209
    const-string v0, "McShowMsgBox"

    const-string v1, "============>come in ShowButtonMsgBox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sput v3, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    .line 211
    const-string v0, "McShowMsgBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========ShowButtonMsgBox====>CustomDialog.stytleFlag  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    const v2, 0x7f060003

    invoke-direct {v0, v1, v2}, Lcom/stbmc/maincontrol/CustomDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    .line 213
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->SURE:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    invoke-virtual {v0, p2, p3, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setDialogProperity(Ljava/lang/String;Ljava/lang/String;Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;)V

    .line 215
    new-instance v0, Lcom/stbmc/maincontrol/McShowMsgBox$4;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/McShowMsgBox$4;-><init>(Lcom/stbmc/maincontrol/McShowMsgBox;)V

    .line 290
    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McShowMsgBox$4;->start()V

    .line 292
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    new-instance v1, Lcom/stbmc/maincontrol/McShowMsgBox$5;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/McShowMsgBox$5;-><init>(Lcom/stbmc/maincontrol/McShowMsgBox;)V

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 313
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->show()V

    .line 315
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public ShowMsgBox(III)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "title"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 142
    const-string v2, "McShowMsgBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============>ShowMsgBox messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v1, ""

    .line 144
    .local v1, "ititle":Ljava/lang/String;
    const-string v0, ""

    .line 145
    .local v0, "imsg":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 172
    :goto_1
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    .line 183
    :goto_2
    const/4 v2, 0x0

    return v2

    .line 148
    :pswitch_1
    const v2, 0x7f05009b

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    const v2, 0x7f05009c

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_3
    const v2, 0x7f0500a0

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :pswitch_4
    const v2, 0x7f05009d

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    goto :goto_1

    .line 164
    :pswitch_5
    const v2, 0x7f05009e

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_1

    .line 167
    :pswitch_6
    const v2, 0x7f0500a2

    invoke-virtual {p0, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    goto :goto_1

    .line 175
    :pswitch_7
    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/McShowMsgBox;->ShowTipMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :pswitch_8
    invoke-virtual {p0, p1, v1, v0}, Lcom/stbmc/maincontrol/McShowMsgBox;->ShowButtonMsgBox(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_2

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 158
    :pswitch_data_1
    .packed-switch 0x514
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 172
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected ShowTipMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "McShowMsgBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============>tipmessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "McShowMsgBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====ShowTipMessage========>CustomDialog.stytleFlag  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    sput v0, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    .line 190
    new-instance v0, Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    const v2, 0x7f060003

    invoke-direct {v0, v1, v2}, Lcom/stbmc/maincontrol/CustomDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    .line 191
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->SURE:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    invoke-virtual {v0, p1, p2, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setDialogProperity(Ljava/lang/String;Ljava/lang/String;Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;)V

    .line 193
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    new-instance v1, Lcom/stbmc/maincontrol/McShowMsgBox$3;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/McShowMsgBox$3;-><init>(Lcom/stbmc/maincontrol/McShowMsgBox;)V

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 205
    sget-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->builder1:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->show()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const-string v6, "McShowMsgBox"

    const-string v7, "============>come in onCreate\n"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "HIDE_MSGBOX"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lcom/stbmc/maincontrol/McShowMsgBox;->stopActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/stbmc/maincontrol/McShowMsgBox;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    sput-object p0, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    .line 97
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/McShowMsgBox;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 98
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "msgboxInfo"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "msgbox_style"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 101
    .local v4, "iType":I
    const-string v6, "msgbox_title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 102
    .local v3, "iTitle":I
    const-string v6, "msgbox_message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "iMessageId":I
    invoke-virtual {p0, v4, v3, v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->ShowMsgBox(III)I

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 321
    const-string v0, "McShowMsgBox"

    const-string v1, "============>begain to destroy\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox;->stopActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/McShowMsgBox;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    const/4 v0, 0x0

    sput-object v0, Lcom/stbmc/maincontrol/McShowMsgBox;->mcMsgBox:Lcom/stbmc/maincontrol/McShowMsgBox;

    .line 325
    const-string v0, "McShowMsgBox"

    const-string v1, "============>end destroy\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method
