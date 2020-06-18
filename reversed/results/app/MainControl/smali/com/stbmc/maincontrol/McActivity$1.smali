.class Lcom/stbmc/maincontrol/McActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "McActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McActivity;
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
    .line 87
    iput-object p1, p0, Lcom/stbmc/maincontrol/McActivity$1;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.StbMc.DIALOG_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity$1;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McActivity;->access$000(Lcom/stbmc/maincontrol/McActivity;)Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity$1;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McActivity;->access$000(Lcom/stbmc/maincontrol/McActivity;)Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity$1;->this$0:Lcom/stbmc/maincontrol/McActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stbmc/maincontrol/McActivity;->access$002(Lcom/stbmc/maincontrol/McActivity;Lcom/stbmc/maincontrol/CustomDialog;)Lcom/stbmc/maincontrol/CustomDialog;

    .line 98
    :cond_0
    invoke-static {}, Lcom/stbmc/maincontrol/McActivity;->access$100()Lcom/stbmc/maincontrol/McActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lcom/stbmc/maincontrol/McActivity;->access$100()Lcom/stbmc/maincontrol/McActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    .line 102
    :cond_1
    return-void
.end method
