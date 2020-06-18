.class Lcom/stbmc/maincontrol/McActivity$4;
.super Ljava/lang/Object;
.source "McActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McActivity;->ShowTwoButtonDailog(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McActivity;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-static {v1}, Lcom/stbmc/maincontrol/McActivity;->access$000(Lcom/stbmc/maincontrol/McActivity;)Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/CustomDialog;->getDialogResult()Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    move-result-object v0

    .line 170
    .local v0, "result":Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->OK:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McActivity;->access$200(Lcom/stbmc/maincontrol/McActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/stbmc/maincontrol/McActivity;->SendDialogResult(II)V

    .line 172
    const-string v1, "============>ShowOneButtonDialog, McActivity.this.finish()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->CANCEL:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McActivity;->access$200(Lcom/stbmc/maincontrol/McActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/stbmc/maincontrol/McActivity;->SendDialogResult(II)V

    .line 177
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$4;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    goto :goto_0
.end method
