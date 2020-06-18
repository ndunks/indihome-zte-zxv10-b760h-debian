.class Lcom/stbmc/maincontrol/McService$19;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->setThreadToSentBroatcastToXXYS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 11346
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$19;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 11349
    const/4 v0, 0x1

    .line 11351
    .local v0, "a":I
    const/4 v2, 0x0

    .line 11352
    .local v2, "hadSentTimes":I
    const/4 v7, 0x0

    .line 11354
    .local v7, "times":I
    :goto_0
    if-eqz v0, :cond_0

    .line 11358
    const-wide/32 v8, 0xea60

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11364
    const/4 v4, 0x0

    .line 11367
    .local v4, "runHour":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 11368
    .local v5, "runtime":J
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setThreadToSentBroatcastToXXYS runtime is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11371
    const/4 v8, 0x1

    const-string v9, "zte.debug.SentBroatcastToXXYS"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 11373
    long-to-int v8, v5

    const v9, 0x36ee80

    div-int v4, v8, v9

    .line 11374
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setThreadToSentBroatcastToXXYS runHour is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11376
    div-int/lit8 v7, v4, 0x4

    .line 11377
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setThreadToSentBroatcastToXXYS times is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", hadSentTimes is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11387
    :goto_1
    if-le v7, v2, :cond_2

    .line 11388
    const-string v8, "MAIN_CONTROL"

    const-string v9, "setThreadToSentBroatcastToXXYS times > hadSentTimes,sent broatcast."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11390
    new-instance v3, Landroid/content/Intent;

    const-string v8, "zte.android.action.ZteStbDataMonitorLoopReceiver"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11391
    .local v3, "intentInfo":Landroid/content/Intent;
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    .line 11392
    add-int/lit8 v2, v2, 0x1

    .line 11393
    goto/16 :goto_0

    .line 11359
    .end local v3    # "intentInfo":Landroid/content/Intent;
    .end local v4    # "runHour":I
    .end local v5    # "runtime":J
    :catch_0
    move-exception v1

    .line 11361
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v8, "MAIN_CONTROL"

    const-string v9, "setThreadToSentBroatcastToXXYS sleep failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11397
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 11380
    .restart local v4    # "runHour":I
    .restart local v5    # "runtime":J
    :cond_1
    long-to-int v8, v5

    const v9, 0xea60

    div-int v4, v8, v9

    .line 11381
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setThreadToSentBroatcastToXXYS runMin is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11383
    div-int/lit8 v7, v4, 0x2

    .line 11384
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setThreadToSentBroatcastToXXYS times is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", hadSentTimes is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11394
    :cond_2
    const-string v8, "MAIN_CONTROL"

    const-string v9, "setThreadToSentBroatcastToXXYS times =< hadSentTimes, do nothings."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
