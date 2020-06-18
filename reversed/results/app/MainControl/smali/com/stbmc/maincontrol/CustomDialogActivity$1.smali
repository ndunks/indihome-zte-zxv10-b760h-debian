.class Lcom/stbmc/maincontrol/CustomDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CustomDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomDialogActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$1;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$1;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$000(Lcom/stbmc/maincontrol/CustomDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "CustomDialogActivity"

    const-string v1, "get Receiver,dismiss the dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$1;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$000(Lcom/stbmc/maincontrol/CustomDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$1;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$002(Lcom/stbmc/maincontrol/CustomDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 72
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$1;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialogActivity;->finish()V

    .line 75
    :cond_0
    return-void
.end method
