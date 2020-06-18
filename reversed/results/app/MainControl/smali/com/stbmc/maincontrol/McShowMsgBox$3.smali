.class Lcom/stbmc/maincontrol/McShowMsgBox$3;
.super Ljava/lang/Object;
.source "McShowMsgBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McShowMsgBox;->ShowTipMessage(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 193
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$3;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 195
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$200()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/CustomDialog;->getDialogResult()Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    move-result-object v0

    .line 196
    .local v0, "result":Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    const-string v1, "McShowMsgBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============>result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->OK:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$200()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 200
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/McShowMsgBox;->finish()V

    .line 202
    :cond_0
    return-void
.end method
