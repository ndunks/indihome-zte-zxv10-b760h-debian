.class final Lcom/stbmc/maincontrol/McShowMsgBox$1;
.super Ljava/lang/Thread;
.source "McShowMsgBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McShowMsgBox;->actionToShowMsgBoxActivity(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgboxInfo:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/stbmc/maincontrol/McShowMsgBox$1;->val$msgboxInfo:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    const-string v2, "McShowMsgBox"

    const-string v3, "============>come in thread\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 81
    :cond_0
    :goto_1
    return-void

    .line 71
    :cond_1
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$000()Lcom/stbmc/maincontrol/McShowMsgBox;

    move-result-object v2

    if-nez v2, :cond_0

    .line 74
    const-string v2, "McShowMsgBox"

    const-string v3, "============>to restart this activity\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McShowMsgBox$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "msgboxInfo"

    iget-object v3, p0, Lcom/stbmc/maincontrol/McShowMsgBox$1;->val$msgboxInfo:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/stbmc/maincontrol/McShowMsgBox$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
