.class Lcom/stbmc/maincontrol/CustomQRDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomQRDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CustomQRDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CustomQRDialog;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomQRDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomQRDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomQRDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->access$000(Lcom/stbmc/maincontrol/CustomQRDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "CustomQRDialog"

    const-string v1, "get Receiver,dismiss the dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->access$000(Lcom/stbmc/maincontrol/CustomQRDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomQRDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stbmc/maincontrol/CustomQRDialog;->access$002(Lcom/stbmc/maincontrol/CustomQRDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 87
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomQRDialog$1;->this$0:Lcom/stbmc/maincontrol/CustomQRDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomQRDialog;->finish()V

    .line 90
    :cond_0
    return-void
.end method
