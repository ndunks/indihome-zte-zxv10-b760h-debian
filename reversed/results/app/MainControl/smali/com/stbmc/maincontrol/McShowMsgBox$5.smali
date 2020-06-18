.class Lcom/stbmc/maincontrol/McShowMsgBox$5;
.super Ljava/lang/Object;
.source "McShowMsgBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McShowMsgBox;->ShowButtonMsgBox(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McShowMsgBox;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McShowMsgBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McShowMsgBox;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$5;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 295
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stbmc/maincontrol/CustomDialog;->getDialogResult()Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    move-result-object v2

    .line 296
    .local v2, "result":Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    sget-object v4, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->OK:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    invoke-virtual {v2, v4}, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const-string v4, "McShowMsgBox"

    const-string v5, "============>DIALOG_RESULT.OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v4

    iget-object v4, v4, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "serialNo":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "MC_POST_SERIALNO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "SerialInfo":Landroid/os/Bundle;
    const-string v4, "serialNo"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v4, "SerialInfo"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 304
    iget-object v4, p0, Lcom/stbmc/maincontrol/McShowMsgBox$5;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-virtual {v4, v1}, Lcom/stbmc/maincontrol/McShowMsgBox;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    const-string v4, "McShowMsgBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strNo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 307
    const/4 v4, 0x0

    sput v4, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    .line 308
    iget-object v4, p0, Lcom/stbmc/maincontrol/McShowMsgBox$5;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v5

    const v6, 0x7f0500a0

    invoke-virtual {v5, v6}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v6

    const v7, 0x7f05009f

    invoke-virtual {v6, v7}, Lcom/stbmc/maincontrol/McShowMsgBox;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/stbmc/maincontrol/McShowMsgBox;->ShowTipMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v0    # "SerialInfo":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "serialNo":Ljava/lang/String;
    :cond_0
    return-void
.end method
