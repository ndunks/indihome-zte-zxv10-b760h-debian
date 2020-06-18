.class Lcom/stbmc/maincontrol/McService$17;
.super Ljava/lang/Thread;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->CheckAndKillbgAPK(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;

.field final synthetic val$Packagename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 11105
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$17;->this$0:Lcom/stbmc/maincontrol/McService;

    iput-object p2, p0, Lcom/stbmc/maincontrol/McService$17;->val$Packagename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    .line 11112
    :cond_0
    :goto_0
    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11120
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$17;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$17;->val$Packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->TopPackageCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11123
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$17;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/McService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 11125
    .local v7, "activityManager":Landroid/app/ActivityManager;
    if-nez v7, :cond_1

    .line 11127
    const-string v0, "MAIN_CONTROL"

    const-string v1, "activityManager = null  failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11128
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    :goto_1
    return-void

    .line 11113
    :catch_0
    move-exception v9

    .line 11115
    .local v9, "e":Ljava/lang/InterruptedException;
    const-string v0, "MAIN_CONTROL"

    const-string v1, "CheckAndKillbgAPK sleep failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11132
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .restart local v7    # "activityManager":Landroid/app/ActivityManager;
    :cond_1
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 11133
    .local v11, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 11135
    .local v10, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$17;->val$Packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11141
    const-string v0, "MAIN_CONTROL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in background,kill it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "killall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11144
    .local v8, "cmd":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 11145
    .local v3, "bCmd":[B
    new-array v5, v13, [B

    .line 11146
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput v13, v6, v0

    .line 11147
    .local v6, "aReplyLen":[I
    sget-object v0, Lcom/stbmc/maincontrol/McService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "STB_MAINCENTER"

    const v2, 0x1447001

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    goto :goto_2

    .line 11161
    .end local v3    # "bCmd":[B
    .end local v5    # "aReply":[B
    .end local v6    # "aReplyLen":[I
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    .end local v8    # "cmd":Ljava/lang/String;
    .end local v10    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v11    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const-string v0, "MAIN_CONTROL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$17;->val$Packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in front"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
