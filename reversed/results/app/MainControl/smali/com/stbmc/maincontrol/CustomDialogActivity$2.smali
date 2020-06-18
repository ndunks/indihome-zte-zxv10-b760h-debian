.class Lcom/stbmc/maincontrol/CustomDialogActivity$2;
.super Ljava/lang/Thread;
.source "CustomDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/CustomDialogActivity;->onPause()V
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
    .line 337
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    const-wide/16 v1, 0x258

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    const-string v1, "CustomDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###====> onPause() bOnResume2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-static {v3}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$100(Lcom/stbmc/maincontrol/CustomDialogActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-static {v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$100(Lcom/stbmc/maincontrol/CustomDialogActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-static {v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$000(Lcom/stbmc/maincontrol/CustomDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 350
    const-string v1, "CustomDialogActivity"

    const-string v2, "###====> onPause(), finish."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-static {v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$000(Lcom/stbmc/maincontrol/CustomDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 352
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/stbmc/maincontrol/CustomDialogActivity;->access$002(Lcom/stbmc/maincontrol/CustomDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 353
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialogActivity$2;->this$0:Lcom/stbmc/maincontrol/CustomDialogActivity;

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/CustomDialogActivity;->finish()V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v1, "CustomDialogActivity"

    const-string v2, "###====> onPause(), myAlertDialog == null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
