.class Lcom/stbmc/maincontrol/McService$16;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->startSYMediaMonitor()V
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
    .line 10606
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$16;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 10609
    const/4 v4, 0x1

    .line 10610
    .local v4, "monitor":Z
    const/4 v3, 0x0

    .line 10612
    .local v3, "find_notify":Z
    :goto_0
    if-ne v12, v4, :cond_5

    .line 10613
    :goto_1
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6300()Z

    move-result v8

    if-ne v12, v8, :cond_4

    .line 10615
    :try_start_0
    iget-object v8, p0, Lcom/stbmc/maincontrol/McService$16;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Lcom/stbmc/maincontrol/McService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 10616
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 10617
    .local v6, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10618
    .local v5, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 10619
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xb

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 10620
    .local v7, "tag_head":Ljava/lang/String;
    const-string v8, "com.SyMedia"

    invoke-virtual {v8, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 10621
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6400()Z

    move-result v8

    if-ne v12, v8, :cond_0

    .line 10622
    const-string v8, "=================>>>>> Warning: Find SY app and must transmit setting hot key."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10624
    :cond_0
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6500()I

    move-result v8

    invoke-static {v8}, Lcom/stbmc/maincontrol/McService;->catchSYMedia(I)V

    .line 10625
    const/4 v3, 0x1

    .line 10635
    :cond_1
    :goto_2
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10636
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v5    # "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v7    # "tag_head":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 10637
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 10627
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v5    # "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v7    # "tag_head":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6400()Z

    move-result v8

    if-ne v12, v8, :cond_3

    .line 10628
    const-string v8, "=================>>>>> Find normal app [%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10630
    :cond_3
    if-ne v12, v3, :cond_1

    .line 10631
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6600()I

    move-result v8

    invoke-static {v8}, Lcom/stbmc/maincontrol/McService;->catchSYMedia(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10632
    const/4 v3, 0x0

    goto :goto_2

    .line 10642
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v5    # "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v7    # "tag_head":Ljava/lang/String;
    :cond_4
    const-wide/16 v8, 0x3e8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 10643
    :catch_1
    move-exception v2

    .line 10644
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 10647
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    return-void
.end method
