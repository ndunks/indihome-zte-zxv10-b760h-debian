.class Lcommon/customdialog/DialogActivity$2;
.super Ljava/lang/Thread;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcommon/customdialog/DialogActivity;->onPause()V
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
    .line 267
    iput-object p1, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    const-wide/16 v1, 0x258

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    const-string v1, "DialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###====> onPause() bOnResume2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-static {v3}, Lcommon/customdialog/DialogActivity;->access$100(Lcommon/customdialog/DialogActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-static {v1}, Lcommon/customdialog/DialogActivity;->access$100(Lcommon/customdialog/DialogActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-static {v1}, Lcommon/customdialog/DialogActivity;->access$000(Lcommon/customdialog/DialogActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "DialogActivity"

    const-string v2, "###====> onPause(), finish."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-static {v1}, Lcommon/customdialog/DialogActivity;->access$000(Lcommon/customdialog/DialogActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 282
    iget-object v1, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcommon/customdialog/DialogActivity;->access$002(Lcommon/customdialog/DialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 283
    iget-object v1, p0, Lcommon/customdialog/DialogActivity$2;->this$0:Lcommon/customdialog/DialogActivity;

    invoke-virtual {v1}, Lcommon/customdialog/DialogActivity;->finish()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v1, "DialogActivity"

    const-string v2, "###====> onPause(), myAlertDialog == null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
