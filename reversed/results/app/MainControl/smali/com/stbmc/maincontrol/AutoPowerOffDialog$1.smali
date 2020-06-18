.class Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoPowerOffDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/AutoPowerOffDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    const-string v1, "Net_Dialog_State"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "myString":Ljava/lang/String;
    const-string v1, "AutoPowerOffDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v0, :cond_0

    const-string v1, "Net_Dialog_State"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "common.autopower.DIALOG_HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_1
    const-string v1, "AutoPowerOffDialog"

    const-string v2, "get Receiver,dismiss the dialog!---1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v1}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$000(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "AutoPowerOffDialog"

    const-string v2, "get Receiver,dismiss the dialog!---2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v1}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$000(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    iget-object v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$002(Lcom/stbmc/maincontrol/AutoPowerOffDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 103
    iget-object v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$1;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->finish()V

    .line 107
    :cond_2
    return-void
.end method
