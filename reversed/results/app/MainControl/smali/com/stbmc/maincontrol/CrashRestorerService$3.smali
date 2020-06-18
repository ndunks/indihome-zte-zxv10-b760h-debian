.class Lcom/stbmc/maincontrol/CrashRestorerService$3;
.super Ljava/util/TimerTask;
.source "CrashRestorerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CrashRestorerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CrashRestorerService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/stbmc/maincontrol/CrashRestorerService$3;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x4

    .line 107
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$3;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "run CrashRestoretask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$000()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v0

    const-string v1, "System"

    const-string v2, "WorkMode"

    invoke-virtual {v0, v1, v2, v10}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 109
    invoke-static {}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$000()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v0

    const-string v1, "System"

    const-string v2, "SafeErrCode"

    const/4 v8, 0x3

    invoke-virtual {v0, v1, v2, v8}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 112
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    new-array v3, v9, [B

    fill-array-data v3, :array_0

    .line 120
    .local v3, "aData":[B
    const/4 v4, 0x4

    .line 121
    .local v4, "aDataLen":I
    new-array v5, v9, [B

    .line 122
    .local v5, "aReply":[B
    new-array v6, v10, [I

    .line 123
    .local v6, "aReplyLen":[I
    const/4 v0, 0x0

    aput v9, v6, v0

    .line 124
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$3;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-boolean v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->nocancel:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$3;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "call stbmc to reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$100()Lcom/stbmc/maincontrol/ClientManager;

    move-result-object v0

    const-string v1, "AP_C_MC"

    const v2, 0x1405006

    invoke-virtual/range {v0 .. v6}, Lcom/stbmc/maincontrol/ClientManager;->cc_syncSend(Ljava/lang/String;I[BI[B[I)I

    .line 131
    :cond_0
    return-void

    .line 114
    .end local v3    # "aData":[B
    .end local v4    # "aDataLen":I
    .end local v5    # "aReply":[B
    .end local v6    # "aReplyLen":[I
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$3;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
