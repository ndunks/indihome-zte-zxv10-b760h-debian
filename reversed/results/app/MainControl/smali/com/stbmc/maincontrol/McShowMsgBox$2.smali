.class Lcom/stbmc/maincontrol/McShowMsgBox$2;
.super Landroid/content/BroadcastReceiver;
.source "McShowMsgBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McShowMsgBox;
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
    .line 110
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$2;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIDE_MSGBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 119
    invoke-static {v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$102(Lcom/stbmc/maincontrol/CustomDialog;)Lcom/stbmc/maincontrol/CustomDialog;

    .line 121
    :cond_0
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$200()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$200()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->dismiss()V

    .line 124
    invoke-static {v2}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$202(Lcom/stbmc/maincontrol/CustomDialog;)Lcom/stbmc/maincontrol/CustomDialog;

    .line 127
    :cond_1
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "McShowMsgBox"

    const-string v1, "============>to destroy\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McShowMsgBox;->finish()V

    .line 134
    :cond_2
    return-void
.end method
