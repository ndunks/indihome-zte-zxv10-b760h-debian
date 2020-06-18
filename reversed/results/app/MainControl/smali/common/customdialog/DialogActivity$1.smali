.class Lcommon/customdialog/DialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcommon/customdialog/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcommon/customdialog/DialogActivity;


# direct methods
.method constructor <init>(Lcommon/customdialog/DialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcommon/customdialog/DialogActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcommon/customdialog/DialogActivity$1;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcommon/customdialog/DialogActivity$1;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-static {v0}, Lcommon/customdialog/DialogActivity;->access$000(Lcommon/customdialog/DialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "DialogActivity"

    const-string v1, "get Receiver,dismiss the dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcommon/customdialog/DialogActivity$1;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-static {v0}, Lcommon/customdialog/DialogActivity;->access$000(Lcommon/customdialog/DialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 62
    iget-object v0, p0, Lcommon/customdialog/DialogActivity$1;->this$0:Lcommon/customdialog/DialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcommon/customdialog/DialogActivity;->access$002(Lcommon/customdialog/DialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 63
    iget-object v0, p0, Lcommon/customdialog/DialogActivity$1;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-virtual {v0}, Lcommon/customdialog/DialogActivity;->finish()V

    .line 66
    :cond_0
    return-void
.end method
