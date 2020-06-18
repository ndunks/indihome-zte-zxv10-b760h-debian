.class Lcom/stbmc/maincontrol/CustomBKDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomBKDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CustomBKDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CustomBKDialog;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomBKDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomBKDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomBKDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->access$000(Lcom/stbmc/maincontrol/CustomBKDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "CustomBKDialog"

    const-string v1, "get Receiver,dismiss the dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->access$000(Lcom/stbmc/maincontrol/CustomBKDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomBKDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stbmc/maincontrol/CustomBKDialog;->access$002(Lcom/stbmc/maincontrol/CustomBKDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 96
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomBKDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomBKDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomBKDialog;->finish()V

    .line 99
    :cond_0
    return-void
.end method
