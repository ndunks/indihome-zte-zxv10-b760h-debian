.class Lcom/stbmc/maincontrol/McService$18;
.super Ljava/lang/Thread;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->setYinniRestart()V
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
    .line 11231
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 11233
    const/16 v1, 0xfa2

    .line 11234
    .local v1, "messageId":I
    const-string v3, ""

    .line 11235
    .local v3, "title":Ljava/lang/String;
    const-string v6, ""

    .line 11236
    .local v6, "retry":Ljava/lang/String;
    const-string v5, ""

    .line 11237
    .local v5, "confirm":Ljava/lang/String;
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3600()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v0

    const-string v2, "Common_ext"

    const-string v12, "RestartTime"

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v12, v13}, Lcommon/android/mscpcfg/McspCfgmanager;->GetInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 11238
    .local v7, "autoRestartHour":I
    const-string v0, "MAIN_CONTROL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Common_ext]RestartTime = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11239
    if-gtz v7, :cond_0

    .line 11241
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart off"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11258
    :goto_0
    return-void

    .line 11245
    :cond_0
    const/16 v0, 0x2d0

    if-le v7, v0, :cond_1

    .line 11247
    const/16 v7, 0x2d0

    .line 11249
    :cond_1
    const-string v0, "MAIN_CONTROL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoRestartHour = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11254
    :cond_2
    :goto_1
    const-wide/32 v12, 0xea60

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11260
    const/4 v11, 0x0

    .line 11261
    .local v11, "waitHour":I
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500df

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 11262
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500e0

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11263
    const/4 v0, 0x1

    const-string v2, "zte.debug.yinnirestart"

    const/4 v12, 0x0

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 11265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 11266
    .local v9, "runtime":J
    const-string v0, "MAIN_CONTROL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setYinniRestart runtime is "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11269
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5600(Lcom/stbmc/maincontrol/McService;)J

    move-result-wide v12

    sub-long v12, v9, v12

    long-to-int v0, v12

    const v2, 0x36ee80

    div-int v11, v0, v2

    .line 11271
    const-string v0, "MAIN_CONTROL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setYinniRestart waitHour is "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",showDialogTimes is "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v12}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",overtime is"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    .line 11272
    invoke-static {v12}, Lcom/stbmc/maincontrol/McService;->access$5600(Lcom/stbmc/maincontrol/McService;)J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11271
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11293
    .end local v9    # "runtime":J
    :cond_3
    :goto_2
    if-ne v7, v11, :cond_9

    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v0

    if-nez v0, :cond_9

    .line 11295
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5508(Lcom/stbmc/maincontrol/McService;)I

    .line 11296
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    .line 11297
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Lcom/stbmc/maincontrol/McService$RebootTask;

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {v2, v12}, Lcom/stbmc/maincontrol/McService$RebootTask;-><init>(Lcom/stbmc/maincontrol/McService;)V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    .line 11298
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500db

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11299
    .local v4, "message":Ljava/lang/String;
    const-string v0, "sys.vod.showdialog"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11300
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11301
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    const-wide/32 v12, 0xea60

    invoke-virtual {v0, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 11255
    .end local v4    # "message":Ljava/lang/String;
    .end local v11    # "waitHour":I
    :catch_0
    move-exception v8

    .line 11257
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart sleep failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11274
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v11    # "waitHour":I
    :cond_4
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart zte.debug.yinnirestart is 1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11275
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v0

    if-nez v0, :cond_5

    .line 11276
    move v11, v7

    .line 11277
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart showDialogTimes is 0 set waitHour 72"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11278
    :cond_5
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 11279
    add-int/lit8 v11, v7, 0x2

    .line 11280
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart showDialogTimes is 1 set waitHour 74"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11281
    :cond_6
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 11282
    add-int/lit8 v11, v7, 0x4

    .line 11283
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart showDialogTimes is 2 set waitHour 76"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11284
    :cond_7
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 11285
    add-int/lit8 v11, v7, 0x6

    .line 11286
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart showDialogTimes is 3 set waitHour 78"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11287
    :cond_8
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 11288
    add-int/lit8 v11, v7, 0x8

    .line 11289
    const-string v0, "MAIN_CONTROL"

    const-string v2, "setYinniRestart showDialogTimes is 4 set waitHour 80"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11302
    :cond_9
    add-int/lit8 v0, v7, 0x2

    if-ne v0, v11, :cond_a

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 11304
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5508(Lcom/stbmc/maincontrol/McService;)I

    .line 11305
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    .line 11306
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Lcom/stbmc/maincontrol/McService$RebootTask;

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {v2, v12}, Lcom/stbmc/maincontrol/McService$RebootTask;-><init>(Lcom/stbmc/maincontrol/McService;)V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    .line 11307
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500dc

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11308
    .restart local v4    # "message":Ljava/lang/String;
    const-string v0, "sys.vod.showdialog"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11309
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11310
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    const-wide/32 v12, 0xea60

    invoke-virtual {v0, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 11311
    .end local v4    # "message":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v7, 0x4

    if-ne v0, v11, :cond_b

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 11313
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5508(Lcom/stbmc/maincontrol/McService;)I

    .line 11314
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    .line 11315
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Lcom/stbmc/maincontrol/McService$RebootTask;

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {v2, v12}, Lcom/stbmc/maincontrol/McService$RebootTask;-><init>(Lcom/stbmc/maincontrol/McService;)V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    .line 11316
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500dc

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11317
    .restart local v4    # "message":Ljava/lang/String;
    const-string v0, "sys.vod.showdialog"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11318
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11319
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    const-wide/32 v12, 0xea60

    invoke-virtual {v0, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 11320
    .end local v4    # "message":Ljava/lang/String;
    :cond_b
    add-int/lit8 v0, v7, 0x6

    if-ne v0, v11, :cond_c

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_c

    .line 11322
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5508(Lcom/stbmc/maincontrol/McService;)I

    .line 11323
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    .line 11324
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Lcom/stbmc/maincontrol/McService$RebootTask;

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {v2, v12}, Lcom/stbmc/maincontrol/McService$RebootTask;-><init>(Lcom/stbmc/maincontrol/McService;)V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    .line 11325
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500dc

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11326
    .restart local v4    # "message":Ljava/lang/String;
    const-string v0, "sys.vod.showdialog"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11327
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11328
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    const-wide/32 v12, 0xea60

    invoke-virtual {v0, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 11330
    .end local v4    # "message":Ljava/lang/String;
    :cond_c
    add-int/lit8 v0, v7, 0x8

    if-ne v0, v11, :cond_2

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v2}, Lcom/stbmc/maincontrol/McService;->access$5500(Lcom/stbmc/maincontrol/McService;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 11331
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/McService;->access$5508(Lcom/stbmc/maincontrol/McService;)I

    .line 11332
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    .line 11333
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    new-instance v2, Lcom/stbmc/maincontrol/McService$RebootTask;

    iget-object v12, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {v2, v12}, Lcom/stbmc/maincontrol/McService$RebootTask;-><init>(Lcom/stbmc/maincontrol/McService;)V

    iput-object v2, v0, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    .line 11334
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v0

    const v2, 0x7f0500de

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/McService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11335
    .restart local v4    # "message":Ljava/lang/String;
    const-string v0, "sys.vod.showdialog"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11336
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11337
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService;->rebootTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$18;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v2, v2, Lcom/stbmc/maincontrol/McService;->rebootTask:Lcom/stbmc/maincontrol/McService$RebootTask;

    const-wide/16 v12, 0x2710

    invoke-virtual {v0, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1
.end method
