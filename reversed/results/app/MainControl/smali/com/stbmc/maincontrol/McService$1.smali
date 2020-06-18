.class Lcom/stbmc/maincontrol/McService$1;
.super Landroid/os/Handler;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
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
    .line 2429
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 89
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2431
    const-string v3, "Message ID is %d."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2433
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2434
    const-string v3, "Invalid server instance."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3410
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    const-string v63, "0"

    .line 2439
    .local v63, "mauto":Ljava/lang/String;
    const-string v3, "sys.com.autotest.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 2441
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2443
    const-string v3, "sys.com.autotest.java.num"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2444
    const-string v3, "MAIN_CONTROL"

    const-string v5, "@@@@@======> autotest member variable clear."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$102(I)I

    .line 2446
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$200()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2447
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$200()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2450
    :cond_2
    const-string v3, "MAIN_CONTROL"

    const-string v5, "@@@@@======> InterfaceName= mPromptServiceHandler"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@@@@======>in mPromptServiceHandler,interfaceCoverageNum= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$100()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$200()Ljava/util/Set;

    move-result-object v3

    const-string v5, "mPromptServiceHandler"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$200()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2453
    :cond_3
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$200()Ljava/util/Set;

    move-result-object v3

    const-string v5, "mPromptServiceHandler"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2454
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@@@@======> funcSet size= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$200()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$108()I

    .line 2456
    const-string v3, "sys.com.autotest.java.num"

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$100()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 2462
    :sswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v45

    .line 2463
    .local v45, "dialogInfo":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2464
    .local v4, "messageId":I
    const-string v3, "dialog_style"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    .line 2465
    .local v46, "dialog_style":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$300(Lcom/stbmc/maincontrol/McService;I)Ljava/lang/String;

    move-result-object v6

    .line 2466
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$400(Lcom/stbmc/maincontrol/McService;I)Ljava/lang/String;

    move-result-object v7

    .line 2468
    .local v7, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v5, "sys.zte.iptv.errorbox.crtl"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->access$502(Lcom/stbmc/maincontrol/McService;I)I

    .line 2469
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DingQin] SHOW_DIALOG_MSG_ID --> m_nIPTVErrCtrl = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$500(Lcom/stbmc/maincontrol/McService;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    const/16 v3, 0x23

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v5}, Lcom/stbmc/maincontrol/McService;->access$500(Lcom/stbmc/maincontrol/McService;)I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 2471
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DingQin] SHOW_DIALOG_MSG_ID --> mErrCode = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$800(Lcom/stbmc/maincontrol/McService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", mErrMsg = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$900(Lcom/stbmc/maincontrol/McService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    .line 2480
    .local v47, "dqIntent":Landroid/content/Intent;
    const-string v3, "com.zte.mc.neterr"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2481
    const-string v3, "ShowFlag"

    const-string v5, "1"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2482
    const-string v3, "ErrorCode"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v5}, Lcom/stbmc/maincontrol/McService;->access$800(Lcom/stbmc/maincontrol/McService;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2483
    const-string v3, "ErrorMsg"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v5}, Lcom/stbmc/maincontrol/McService;->access$900(Lcom/stbmc/maincontrol/McService;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2484
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2747
    .end local v4    # "messageId":I
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v45    # "dialogInfo":Landroid/os/Bundle;
    .end local v46    # "dialog_style":I
    .end local v47    # "dqIntent":Landroid/content/Intent;
    :catch_0
    move-exception v48

    .line 2749
    .local v48, "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    .line 2754
    .end local v48    # "e":Ljava/lang/Exception;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v5, "sys.zte.iptv.errorbox.crtl"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->access$502(Lcom/stbmc/maincontrol/McService;I)I

    .line 2755
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DingQin] HIDE_DIALOG_MSG_ID --> m_nIPTVErrCtrl = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v9}, Lcom/stbmc/maincontrol/McService;->access$500(Lcom/stbmc/maincontrol/McService;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    const/16 v3, 0x23

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_14

    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_14

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v5}, Lcom/stbmc/maincontrol/McService;->access$500(Lcom/stbmc/maincontrol/McService;)I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 2757
    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    .line 2758
    .restart local v47    # "dqIntent":Landroid/content/Intent;
    const-string v3, "com.zte.mc.neterr"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2759
    const-string v3, "ShowFlag"

    const-string v5, "0"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2760
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2489
    .end local v47    # "dqIntent":Landroid/content/Intent;
    .restart local v4    # "messageId":I
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v45    # "dialogInfo":Landroid/os/Bundle;
    .restart local v46    # "dialog_style":I
    :cond_5
    :try_start_1
    const-string v15, ""

    .line 2490
    .local v15, "retry":Ljava/lang/String;
    const-string v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2494
    .local v8, "confirm":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1100()Lzte/mcsp/MCSPLog;

    move-result-object v3

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lzte/mcsp/MCSPLog;->MCSP_LOGEL(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2506
    :goto_1
    const/4 v3, 0x1

    :try_start_3
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_7

    const/16 v3, 0xe11

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_7

    .line 2508
    const/16 v3, 0x76

    if-eq v3, v4, :cond_6

    const/16 v3, 0x72

    if-ne v3, v4, :cond_7

    .line 2510
    :cond_6
    const-string v3, "MAIN_CONTROL"

    const-string v5, "####====> YN DX 118 114 just OK button"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const/16 v46, 0x1

    .line 2512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050092

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2518
    :cond_7
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_9

    const/16 v3, 0x22

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_9

    .line 2520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0500a3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050093

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2529
    :goto_2
    const-string v3, "Dialog title: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2530
    const-string v3, "Dialog msg  : %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2531
    const-string v3, "Dialog style: %d."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2534
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_a

    const/16 v3, 0x2c

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_a

    const/16 v3, 0x270f

    if-ne v3, v4, :cond_a

    .line 2536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/ActivityManager;

    .line 2537
    .local v37, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v42, v0

    .line 2538
    .local v42, "cn":Landroid/content/ComponentName;
    const-string v41, ""

    .line 2539
    .local v41, "classname":Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v41

    .line 2541
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####====> GuangDong telecom, start netsetting, cur classname = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const-string v3, "com.android.settings.NetWorkActivity"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$1200(Lcom/stbmc/maincontrol/McService;)V

    .line 2545
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2546
    const-string v3, "sys.com.autotest.result"

    const-string v5, "MC_J:func=mPromptServiceHandler:state=success:descript=Startsetting:code=0000"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2496
    .end local v37    # "am":Landroid/app/ActivityManager;
    .end local v41    # "classname":Ljava/lang/String;
    .end local v42    # "cn":Landroid/content/ComponentName;
    :catch_1
    move-exception v48

    .line 2498
    .restart local v48    # "e":Ljava/lang/Exception;
    const-string v3, "MCSP_LOGEL Print error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2499
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2500
    const-string v3, "sys.com.autotest.result"

    const-string v5, "MC_J:func=mPromptServiceHandler:state=fail:descript=MCSP_LOGEL"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    :cond_8
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2525
    .end local v48    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050097

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050096

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 2553
    :cond_a
    const-string v3, "no message"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2556
    :cond_b
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2557
    const-string v3, "sys.com.autotest.result"

    const-string v5, "MC_J:func=mPromptServiceHandler:state=fail:descript=no message"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    :cond_c
    :goto_3
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2728
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1000()Ljava/lang/String;

    move-result-object v40

    .line 2729
    .local v40, "autoTestErrCode":Ljava/lang/String;
    const-string v3, "sys.com.autotest.result"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MC_J:func=mPromptServiceHandler:state=success:descript="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2730
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ":code="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2729
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test success. return autoTestErrCode: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2561
    .end local v40    # "autoTestErrCode":Ljava/lang/String;
    :cond_d
    if-nez v46, :cond_e

    .line 2563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2565
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v46

    if-ne v3, v0, :cond_f

    .line 2567
    const-string v3, "Dialog confirm : %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2570
    :cond_f
    const/4 v3, 0x2

    move/from16 v0, v46

    if-ne v3, v0, :cond_c

    .line 2573
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_10

    const/16 v3, 0x32

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_10

    .line 2577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$1300(Lcom/stbmc/maincontrol/McService;)V

    .line 2579
    const/4 v12, 0x0

    .line 2580
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 2581
    .local v16, "cBitmap":Landroid/graphics/Bitmap;
    const-string v3, "Common"

    const-string v5, "ProductID"

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2582
    .local v85, "stbId":Ljava/lang/String;
    const-string v3, "Common"

    const-string v5, "ServiceUser"

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2583
    .local v35, "adslAccount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$1400(Lcom/stbmc/maincontrol/McService;I)Ljava/lang/String;

    move-result-object v49

    .line 2584
    .local v49, "errorCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3, v4}, Lcom/stbmc/maincontrol/McService;->access$1500(Lcom/stbmc/maincontrol/McService;I)Ljava/lang/String;

    move-result-object v56

    .line 2586
    .local v56, "info":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://cdt.cq.189.cn:8080/adslfix/guzhangInfo.action?stbId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&adslAccount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&errorCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&info="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "utf-8"

    move-object/from16 v0, v56

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "utf-8"

    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    .line 2587
    .local v87, "uri":Ljava/lang/String;
    const-string v3, "CQDX mPromptServiceHandler = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v87, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2589
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Lcom/stbmc/maincontrol/McService;->access$1600(Lcom/stbmc/maincontrol/McService;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v16

    .line 2594
    :goto_4
    :try_start_5
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2595
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v10, v4

    move-object v14, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/stbmc/maincontrol/CustomQRDialog;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2599
    .end local v16    # "cBitmap":Landroid/graphics/Bitmap;
    :try_start_6
    const-string v60, "input keyevent 21"

    .line 2600
    .local v60, "keyCommand":Ljava/lang/String;
    const-string v3, "####====> runtime.getRuntime()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2601
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v81

    .line 2602
    .local v81, "runtime":Ljava/lang/Runtime;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT begin."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2603
    move-object/from16 v0, v81

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v76

    .line 2604
    .local v76, "proc":Ljava/lang/Process;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT end."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 2606
    .end local v60    # "keyCommand":Ljava/lang/String;
    .end local v76    # "proc":Ljava/lang/Process;
    .end local v81    # "runtime":Ljava/lang/Runtime;
    :catch_2
    move-exception v48

    .line 2609
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 2591
    .end local v48    # "e":Ljava/lang/Exception;
    .restart local v16    # "cBitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v48

    .line 2592
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2613
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "cBitmap":Landroid/graphics/Bitmap;
    .end local v35    # "adslAccount":Ljava/lang/String;
    .end local v48    # "e":Ljava/lang/Exception;
    .end local v49    # "errorCode":Ljava/lang/String;
    .end local v56    # "info":Ljava/lang/String;
    .end local v85    # "stbId":Ljava/lang/String;
    .end local v87    # "uri":Ljava/lang/String;
    :cond_10
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_12

    const/16 v3, 0x20

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_12

    .line 2617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$1300(Lcom/stbmc/maincontrol/McService;)V

    .line 2618
    const/4 v12, 0x0

    .line 2619
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 2627
    .restart local v16    # "cBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020016

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2628
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 2629
    .local v19, "originalWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 2631
    .local v20, "originalHeight":I
    const/16 v73, 0xc8

    .line 2632
    .local v73, "newWidth":I
    const/16 v72, 0xc8

    .line 2634
    .local v72, "newHeight":I
    const-string v3, "1280"

    const-string v5, "sys.screen.width"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "720"

    const-string v5, "sys.screen.height"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2636
    const-string v3, "MAIN_CONTROL"

    const-string v5, "change width=128 height=128"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    const/16 v73, 0x80

    .line 2638
    const/16 v72, 0x80

    .line 2641
    :cond_11
    move/from16 v0, v72

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v5, v0

    div-float v82, v3, v5

    .line 2642
    .local v82, "scale":F
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 2643
    .local v21, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v21

    move/from16 v1, v82

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2644
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x1

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2645
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2649
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "####====>Drawable. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move/from16 v23, v4

    move-object/from16 v25, v12

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v15

    move-object/from16 v29, v8

    invoke-static/range {v22 .. v29}, Lcom/stbmc/maincontrol/CustomQRDialog;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2657
    :try_start_8
    const-string v60, "input keyevent 21"

    .line 2658
    .restart local v60    # "keyCommand":Ljava/lang/String;
    const-string v3, "####====> runtime.getRuntime()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2659
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v81

    .line 2660
    .restart local v81    # "runtime":Ljava/lang/Runtime;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT begin."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2661
    move-object/from16 v0, v81

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v76

    .line 2662
    .restart local v76    # "proc":Ljava/lang/Process;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT end."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 2664
    .end local v60    # "keyCommand":Ljava/lang/String;
    .end local v76    # "proc":Ljava/lang/Process;
    .end local v81    # "runtime":Ljava/lang/Runtime;
    :catch_4
    move-exception v48

    .line 2667
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 2671
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "cBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "originalWidth":I
    .end local v20    # "originalHeight":I
    .end local v21    # "matrix":Landroid/graphics/Matrix;
    .end local v48    # "e":Ljava/lang/Exception;
    .end local v72    # "newHeight":I
    .end local v73    # "newWidth":I
    .end local v82    # "scale":F
    :cond_12
    const/4 v3, 0x2

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_13

    const/16 v3, 0x33

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_13

    .line 2675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$1300(Lcom/stbmc/maincontrol/McService;)V

    .line 2679
    const/4 v12, 0x0

    .line 2680
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v22, v0

    move/from16 v23, v4

    move-object/from16 v24, v12

    move-object/from16 v25, v12

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v15

    move-object/from16 v29, v8

    invoke-static/range {v22 .. v29}, Lcom/stbmc/maincontrol/CustomBKDialog;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2684
    :try_start_a
    const-string v60, "input keyevent 21"

    .line 2685
    .restart local v60    # "keyCommand":Ljava/lang/String;
    const-string v3, "####====> runtime.getRuntime()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2686
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v81

    .line 2687
    .restart local v81    # "runtime":Ljava/lang/Runtime;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT begin."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2688
    move-object/from16 v0, v81

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v76

    .line 2689
    .restart local v76    # "proc":Ljava/lang/Process;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT end."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_3

    .line 2691
    .end local v60    # "keyCommand":Ljava/lang/String;
    .end local v76    # "proc":Ljava/lang/Process;
    .end local v81    # "runtime":Ljava/lang/Runtime;
    :catch_5
    move-exception v48

    .line 2694
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 2701
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v48    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$1300(Lcom/stbmc/maincontrol/McService;)V

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v15

    move-object/from16 v28, v8

    invoke-static/range {v22 .. v28}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 2709
    :try_start_c
    const-string v60, "input keyevent 21"

    .line 2710
    .restart local v60    # "keyCommand":Ljava/lang/String;
    const-string v3, "####====> runtime.getRuntime()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2711
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v81

    .line 2712
    .restart local v81    # "runtime":Ljava/lang/Runtime;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT begin."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2713
    move-object/from16 v0, v81

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v76

    .line 2714
    .restart local v76    # "proc":Ljava/lang/Process;
    const-string v3, "####====> runtime.exec KeyEvent.KEYCODE_DPAD_LEFT end."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 2716
    .end local v60    # "keyCommand":Ljava/lang/String;
    .end local v76    # "proc":Ljava/lang/Process;
    .end local v81    # "runtime":Ljava/lang/Runtime;
    :catch_6
    move-exception v48

    .line 2719
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    .line 2764
    .end local v4    # "messageId":I
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "confirm":Ljava/lang/String;
    .end local v15    # "retry":Ljava/lang/String;
    .end local v45    # "dialogInfo":Landroid/os/Bundle;
    .end local v46    # "dialog_style":I
    .end local v48    # "e":Ljava/lang/Exception;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v45

    .line 2765
    .restart local v45    # "dialogInfo":Landroid/os/Bundle;
    const-string v3, "Net_Dialog_State"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v46

    .line 2766
    .local v46, "dialog_style":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "case HIDE_DIALOG_MSG_ID"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 2768
    .local v34, "activityIntent":Landroid/content/Intent;
    const-string v3, "common.customdialog.DIALOG_HIDE"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2769
    const-string v3, "Net_Dialog_State"

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2770
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2774
    .end local v34    # "activityIntent":Landroid/content/Intent;
    .end local v45    # "dialogInfo":Landroid/os/Bundle;
    .end local v46    # "dialog_style":Ljava/lang/String;
    :sswitch_2
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2775
    .local v58, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2776
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const-class v9, Lcom/stbmc/maincontrol/ScreenSaverActivity;

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2781
    .end local v58    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2782
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2783
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2784
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.providers.downloads.ui"

    const-string v9, "com.android.providers.downloads.ui.DownloadList"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2790
    .end local v58    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2791
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2792
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2793
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2794
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v9, "com.android.settings.ManageApplications"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2800
    .end local v58    # "intent":Landroid/content/Intent;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v64

    .line 2801
    .local v64, "msgBoxInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Lcom/stbmc/maincontrol/McShowMsgBox;->actionToShowMsgBoxActivity(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2805
    .end local v64    # "msgBoxInfo":Landroid/os/Bundle;
    :sswitch_6
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 2806
    .restart local v34    # "activityIntent":Landroid/content/Intent;
    const-string v3, "HIDE_MSGBOX"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2807
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2811
    .end local v34    # "activityIntent":Landroid/content/Intent;
    :sswitch_7
    const-string v3, "MAIN_CONTROL"

    const-string v5, "case APP_MSG_START_SETTING"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$1700(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 2816
    :sswitch_8
    const-string v3, "MAIN_CONTROL"

    const-string v5, "case APP_MSG_START_IPTVPLUS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    const-string v75, ""

    .line 2822
    .local v75, "pkgName":Ljava/lang/String;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/ActivityManager;

    .line 2823
    .restart local v37    # "am":Landroid/app/ActivityManager;
    if-nez v37, :cond_15

    .line 2825
    const-string v3, "MAIN_CONTROL"

    const-string v5, "Err, null == am"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :goto_5
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgName = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v75

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    const-string v3, "com.voole.webepg"

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2869
    const-string v3, "MAIN_CONTROL"

    const-string v5, "start com.zte.browser."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 2871
    :try_start_f
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2872
    .restart local v58    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2873
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.zte.browser"

    const-string v9, "com.zte.browser.BrowserActivity"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 2875
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_7
    move-exception v48

    .line 2876
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_10
    const-string v3, "MAIN_CONTROL"

    const-string v5, "error, not install com.zte.browser."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 2907
    .end local v37    # "am":Landroid/app/ActivityManager;
    .end local v48    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v48

    .line 2909
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2830
    .end local v48    # "e":Ljava/lang/Exception;
    .restart local v37    # "am":Landroid/app/ActivityManager;
    :cond_15
    const/16 v53, 0x0

    .line 2831
    .local v53, "iSize":I
    const/4 v3, 0x1

    :try_start_11
    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v80

    .line 2832
    .local v80, "runningTasksInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runningTasksInfos = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    invoke-interface/range {v80 .. v80}, Ljava/util/List;->size()I

    move-result v53

    .line 2834
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iSize = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    if-gtz v53, :cond_16

    .line 2837
    const-string v3, "MAIN_CONTROL"

    const-string v5, "Err, iSize <= 0"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2842
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, v80

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2843
    .local v79, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runningTaskInfo = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v79

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    if-nez v79, :cond_17

    .line 2847
    const-string v3, "MAIN_CONTROL"

    const-string v5, "Err, null == runningTaskInfo"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2852
    :cond_17
    move-object/from16 v0, v79

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v43, v0

    .line 2853
    .local v43, "component":Landroid/content/ComponentName;
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "component = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    if-nez v43, :cond_18

    .line 2856
    const-string v3, "MAIN_CONTROL"

    const-string v5, "Err, null == component"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2860
    :cond_18
    invoke-virtual/range {v43 .. v43}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v75

    goto/16 :goto_5

    .line 2880
    .end local v43    # "component":Landroid/content/ComponentName;
    .end local v53    # "iSize":I
    .end local v79    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v80    # "runningTasksInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_19
    const-string v3, "com.zte.browser"

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2882
    const-string v3, "MAIN_CONTROL"

    const-string v5, "start com.voole.webepg."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 2884
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.voole.webepg"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v58

    .line 2885
    .restart local v58    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    .line 2886
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_9
    move-exception v48

    .line 2887
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_13
    const-string v3, "MAIN_CONTROL"

    const-string v5, "error, not install com voole.webepg."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2894
    .end local v48    # "e":Ljava/lang/Exception;
    :cond_1a
    const-string v3, "MAIN_CONTROL"

    const-string v5, "now top pkgName is not com.voole.webepg or com.zte.browser, start com.zte.browser."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 2896
    :try_start_14
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2897
    .restart local v58    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2898
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.zte.browser"

    const-string v9, "com.zte.browser.BrowserActivity"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_0

    .line 2900
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_a
    move-exception v48

    .line 2901
    .restart local v48    # "e":Ljava/lang/Exception;
    :try_start_15
    const-string v3, "MAIN_CONTROL"

    const-string v5, "error, not install com.zte.browser."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    goto/16 :goto_0

    .line 2915
    .end local v37    # "am":Landroid/app/ActivityManager;
    .end local v48    # "e":Ljava/lang/Exception;
    .end local v75    # "pkgName":Ljava/lang/String;
    :sswitch_9
    const-string v3, "============>>> START_BROWSER_GOOGLE..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2918
    :try_start_16
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2919
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.MAIN"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2920
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2921
    const-string v3, "http://www.google.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 2922
    .local v44, "content_url":Landroid/net/Uri;
    move-object/from16 v0, v58

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2923
    const v3, 0x10008000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2924
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_0

    .line 2927
    .end local v44    # "content_url":Landroid/net/Uri;
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_b
    move-exception v48

    .line 2930
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2935
    .end local v48    # "e":Ljava/lang/Exception;
    :sswitch_a
    const-string v3, "============>>> START_BROWSER_BLANK..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2938
    :try_start_17
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2939
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.MAIN"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2940
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2941
    const-string v3, "about:blank"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 2942
    .restart local v44    # "content_url":Landroid/net/Uri;
    move-object/from16 v0, v58

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2943
    const v3, 0x10008000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2944
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_0

    .line 2948
    .end local v44    # "content_url":Landroid/net/Uri;
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_c
    move-exception v48

    .line 2951
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2958
    .end local v48    # "e":Ljava/lang/Exception;
    :sswitch_b
    const-string v3, "============>>> START_HOMEMEDIA..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2961
    const/16 v3, 0xd

    :try_start_18
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_1b

    const/4 v3, 0x2

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_1b

    .line 2962
    const-string v3, "MAIN_CONTROL"

    const-string v5, "[DingQin] Start homemedia for hebeiLT."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    new-instance v58, Landroid/content/Intent;

    const-string v3, "android.zte.HomeMedia"

    move-object/from16 v0, v58

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2964
    .restart local v58    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    goto/16 :goto_0

    .line 2987
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_d
    move-exception v48

    .line 2989
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2967
    .end local v48    # "e":Ljava/lang/Exception;
    :cond_1b
    const/16 v3, 0x1f

    :try_start_19
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_1c

    .line 2969
    const-string v3, "MAIN_CONTROL"

    const-string v5, "[DingQin] Start homemedia by pkgName and className."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2971
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.MAIN"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2972
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2973
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.smart.terminal.nativeplayer"

    const-string v9, "com.android.smart.terminal.nativeplayer.IndexActivity"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2978
    .end local v58    # "intent":Landroid/content/Intent;
    :cond_1c
    const-string v3, "MAIN_CONTROL"

    const-string v5, "[DingQin] Start homemedia by pkgName and className."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2980
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.MAIN"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2981
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2982
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.zte.homemedia"

    const-string v9, "com.zte.homemedia.HomeMediaActivity"

    invoke-direct {v3, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    goto/16 :goto_0

    .line 2994
    .end local v58    # "intent":Landroid/content/Intent;
    :sswitch_c
    const-string v3, "MAIN_CONTROL"

    const-string v5, "============>>> START_APPMANAGER..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :try_start_1a
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 2998
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2999
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3000
    const-string v3, "which_item"

    const-string v5, "manage_apps"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3002
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1800()I

    move-result v5

    if-ne v3, v5, :cond_1d

    .line 3005
    const-string v3, "MAIN_CONTROL"

    const-string v5, "####====> SettingsType = 1 Not manage_apps Activity"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    goto/16 :goto_0

    .line 3017
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_e
    move-exception v48

    .line 3019
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3009
    .end local v48    # "e":Ljava/lang/Exception;
    .restart local v58    # "intent":Landroid/content/Intent;
    :cond_1d
    :try_start_1b
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####====> Set Action = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1900()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e

    goto :goto_6

    .line 3024
    .end local v58    # "intent":Landroid/content/Intent;
    :sswitch_d
    const-string v3, "MAIN_CONTROL"

    const-string v5, "============>>> START_SYSINFO..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :try_start_1c
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 3028
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3029
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3030
    const-string v3, "which_item"

    const-string v5, "about_info"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3032
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1800()I

    move-result v5

    if-ne v3, v5, :cond_1e

    .line 3035
    const-string v3, "MAIN_CONTROL"

    const-string v5, "####====> Set Action = zte.android.action.aboutsetting"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const-string v3, "zte.android.action.aboutsetting"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3044
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    goto/16 :goto_0

    .line 3046
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_f
    move-exception v48

    .line 3048
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3040
    .end local v48    # "e":Ljava/lang/Exception;
    .restart local v58    # "intent":Landroid/content/Intent;
    :cond_1e
    :try_start_1d
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####====> Set Action = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1900()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_7

    .line 3054
    .end local v58    # "intent":Landroid/content/Intent;
    :sswitch_e
    const-string v3, "============>>>Prompt config update..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3055
    const-string v3, "Common"

    const-string v5, "MarketCode"

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v62

    .line 3056
    .local v62, "marketCode":I
    const-string v3, "Common"

    const-string v5, "OperatorsCode"

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v32

    .line 3057
    .local v32, "OperatorsCode":I
    const/16 v3, 0x33

    move/from16 v0, v62

    if-ne v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v32

    if-ne v0, v3, :cond_0

    .line 3058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2000(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3062
    .end local v32    # "OperatorsCode":I
    .end local v62    # "marketCode":I
    :sswitch_f
    const-string v3, "============>>>Prompt ntp error..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3063
    const-string v3, "sys.com.autotest.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 3064
    const-string v3, "1"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3065
    const-string v3, "MAIN_CONTROL"

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE sys.com.autotest.state=1 ,do nothing."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3067
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2100(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3072
    :sswitch_10
    const-string v3, "============>>>Prompt no config..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2200(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3077
    :sswitch_11
    const-string v3, "============>>>Prompt reboot..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2300(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3082
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    .line 3083
    .local v68, "myBund":Landroid/os/Bundle;
    const-string v3, "Config_item"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 3084
    .local v30, "ConfigItem":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "============>>> start local config:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3085
    const-string v3, "sys.settingkey.forbid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3086
    const-string v3, "MAIN_CONTROL"

    const-string v5, "MSG_START_LOCAL_CFG: 1 == system.settingkey.forbid, Not Start Settings"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3092
    :cond_20
    :try_start_1e
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 3093
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3094
    const/high16 v3, 0x10000000

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3095
    move-object/from16 v0, v58

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3096
    const-string v3, "which_item"

    const-string v5, "iptv_set"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3097
    const-string v3, "============>>> which_item: iptv_set"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3100
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1800()I

    move-result v5

    if-ne v3, v5, :cond_22

    .line 3103
    const-string v3, "qcs"

    const-string v5, "DefaultPlatform"

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/McService;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    .line 3104
    .local v31, "DefaultPlatform":I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v3, v0, :cond_21

    .line 3106
    const-string v3, "MAIN_CONTROL"

    const-string v5, "####====> Set Action = zte.android.action.accountmulsetting"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    const-string v3, "zte.android.action.accountmulsetting"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3122
    .end local v31    # "DefaultPlatform":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    goto/16 :goto_0

    .line 3124
    .end local v58    # "intent":Landroid/content/Intent;
    :catch_10
    move-exception v48

    .line 3127
    .restart local v48    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3111
    .end local v48    # "e":Ljava/lang/Exception;
    .restart local v31    # "DefaultPlatform":I
    .restart local v58    # "intent":Landroid/content/Intent;
    :cond_21
    :try_start_1f
    const-string v3, "MAIN_CONTROL"

    const-string v5, "####====> Set Action = zte.android.action.accountsetting"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    const-string v3, "zte.android.action.accountsetting"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 3118
    .end local v31    # "DefaultPlatform":I
    :cond_22
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####====> Set Action = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$1900()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10

    goto :goto_8

    .line 3134
    .end local v30    # "ConfigItem":Ljava/lang/String;
    .end local v58    # "intent":Landroid/content/Intent;
    .end local v68    # "myBund":Landroid/os/Bundle;
    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    .line 3135
    .local v69, "netInfo":Landroid/os/Bundle;
    const-string v3, "netType"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v71

    .line 3137
    .local v71, "netType":I
    new-instance v70, Landroid/content/Intent;

    invoke-direct/range {v70 .. v70}, Landroid/content/Intent;-><init>()V

    .line 3138
    .local v70, "netIntent":Landroid/content/Intent;
    const-string v3, "com.zte.net.connected"

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3139
    const-string v3, "NETTYPE"

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3140
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3141
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============>>> MSG_PROMPT_NETCONNECT intent com.zte.net.connected netType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============>>> MSG_PROMPT_NETCONNECT iOperatorsCode = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", iMarketCode = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    const/4 v3, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$700()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/16 v3, 0x23

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$600()I

    move-result v5

    if-ne v3, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v5

    const-string v9, "com.fsti.cpe.MainService"

    invoke-virtual {v3, v5, v9}, Lcom/stbmc/maincontrol/McService;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3146
    const-string v3, "config.FirstSettingUI"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v51

    .line 3148
    .local v51, "iFirstSettingUI":I
    const/4 v3, 0x1

    move/from16 v0, v51

    if-ne v3, v0, :cond_23

    .line 3150
    const-string v3, "MAIN_CONTROL"

    const-string v5, "FirstSettingUI = 1 not to start com.fsti.cpe.MainService"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3154
    :cond_23
    const-string v3, "MAIN_CONTROL"

    const-string v5, "try to start com.fsti.cpe.MainService"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    new-instance v58, Landroid/content/Intent;

    invoke-direct/range {v58 .. v58}, Landroid/content/Intent;-><init>()V

    .line 3156
    .restart local v58    # "intent":Landroid/content/Intent;
    const-string v3, "com.fsti.cpe.MainService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3157
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3165
    .end local v51    # "iFirstSettingUI":I
    .end local v58    # "intent":Landroid/content/Intent;
    .end local v69    # "netInfo":Landroid/os/Bundle;
    .end local v70    # "netIntent":Landroid/content/Intent;
    .end local v71    # "netType":I
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    .line 3166
    .restart local v69    # "netInfo":Landroid/os/Bundle;
    const-string v3, "netType"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v71

    .line 3168
    .restart local v71    # "netType":I
    new-instance v70, Landroid/content/Intent;

    invoke-direct/range {v70 .. v70}, Landroid/content/Intent;-><init>()V

    .line 3169
    .restart local v70    # "netIntent":Landroid/content/Intent;
    const-string v3, "com.zte.net.disconnected"

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3170
    const-string v3, "NETTYPE"

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3171
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3172
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============>>> MSG_PROMPT_NETDISCONNECT intent com.zte.net.disconnected netType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2400(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3177
    .end local v69    # "netInfo":Landroid/os/Bundle;
    .end local v70    # "netIntent":Landroid/content/Intent;
    .end local v71    # "netType":I
    :sswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    .line 3178
    .restart local v69    # "netInfo":Landroid/os/Bundle;
    const-string v3, "netType"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v71

    .line 3180
    .restart local v71    # "netType":I
    new-instance v70, Landroid/content/Intent;

    invoke-direct/range {v70 .. v70}, Landroid/content/Intent;-><init>()V

    .line 3181
    .restart local v70    # "netIntent":Landroid/content/Intent;
    const-string v3, "com.zte.net.disconnected"

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3182
    const-string v3, "NETTYPE"

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3183
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3184
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============>>> MSG_PROMPT_NETSTOPED intent com.zte.net.disconnected netType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3188
    .end local v69    # "netInfo":Landroid/os/Bundle;
    .end local v70    # "netIntent":Landroid/content/Intent;
    .end local v71    # "netType":I
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v65

    .line 3189
    .local v65, "msgInfo":Landroid/os/Bundle;
    const-string v3, "msgType"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v67

    .line 3190
    .local v67, "msgtype":I
    const-string v3, "msgID"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v66

    .line 3191
    .local v66, "msgid":I
    const-string v3, ""

    const-string v5, ""

    move/from16 v0, v67

    move/from16 v1, v66

    invoke-static {v0, v1, v3, v5}, Lcom/stbmc/maincontrol/McService;->showDialog(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3195
    .end local v65    # "msgInfo":Landroid/os/Bundle;
    .end local v66    # "msgid":I
    .end local v67    # "msgtype":I
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050098

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3196
    .restart local v6    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050096

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3197
    .restart local v8    # "confirm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050093

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3198
    .local v28, "cancel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/McService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0500ab

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3199
    .restart local v7    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v28}, Lcom/stbmc/maincontrol/CustomDialogActivity;->showCustomDialog(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3204
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "confirm":Ljava/lang/String;
    .end local v28    # "cancel":Ljava/lang/String;
    :sswitch_18
    const-string v3, "MAIN_CONTROL"

    const-string v5, "============>>> APP_MSG_UPDATE_DB"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v65

    .line 3206
    .restart local v65    # "msgInfo":Landroid/os/Bundle;
    const-string v3, "section"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v83

    .line 3207
    .local v83, "section":Ljava/lang/String;
    const-string v3, "key"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v59

    .line 3208
    .local v59, "key":Ljava/lang/String;
    const-string v3, "value"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v88

    .line 3210
    .local v88, "value":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============>>> section = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", key = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", value = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v88

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v83

    move-object/from16 v1, v59

    move-object/from16 v2, v88

    invoke-virtual {v3, v0, v1, v2}, Lcom/stbmc/maincontrol/McService;->updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3215
    .end local v59    # "key":Ljava/lang/String;
    .end local v65    # "msgInfo":Landroid/os/Bundle;
    .end local v83    # "section":Ljava/lang/String;
    .end local v88    # "value":Ljava/lang/String;
    :sswitch_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    .line 3217
    .restart local v68    # "myBund":Landroid/os/Bundle;
    const-string v3, "language"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v61

    .line 3218
    .local v61, "language":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set language22 = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    const-string v3, "chinese"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3221
    const-string v3, "sys.zte.language"

    const-string v5, "zh"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    const-string v3, "sys.zte.country"

    const-string v5, "CN"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3226
    :cond_24
    const-string v3, "spanish"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3228
    const-string v3, "sys.zte.language"

    const-string v5, "es"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    const-string v3, "sys.zte.country"

    const-string v5, "ES"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    new-instance v84, Ljava/util/Locale;

    const-string v3, "es"

    const-string v5, "ES"

    move-object/from16 v0, v84

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    .local v84, "spanishLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v84

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3234
    .end local v84    # "spanishLocale":Ljava/util/Locale;
    :cond_25
    const-string v3, "english"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3236
    const-string v3, "sys.zte.language"

    const-string v5, "en"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    const-string v3, "sys.zte.country"

    const-string v5, "US"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3241
    :cond_26
    const-string v3, "france"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3243
    const-string v3, "sys.zte.language"

    const-string v5, "fr"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    const-string v3, "sys.zte.country"

    const-string v5, "FR"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3248
    :cond_27
    const-string v3, "indonisia"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3250
    const-string v3, "sys.zte.language"

    const-string v5, "in"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    const-string v3, "sys.zte.country"

    const-string v5, "ID"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    new-instance v55, Ljava/util/Locale;

    const-string v3, "in"

    const-string v5, "ID"

    move-object/from16 v0, v55

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    .local v55, "indonesiaLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3256
    .end local v55    # "indonesiaLocale":Ljava/util/Locale;
    :cond_28
    const-string v3, "hyAMniya"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 3258
    const-string v3, "sys.zte.language"

    const-string v5, "hy"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    const-string v3, "sys.zte.country"

    const-string v5, "AM"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    new-instance v50, Ljava/util/Locale;

    const-string v3, "hy"

    const-string v5, "AM"

    move-object/from16 v0, v50

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    .local v50, "hyAMniyaLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3264
    .end local v50    # "hyAMniyaLocale":Ljava/util/Locale;
    :cond_29
    const-string v3, "ruRussia"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 3266
    const-string v3, "sys.zte.language"

    const-string v5, "ru"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    const-string v3, "sys.zte.country"

    const-string v5, "RU"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    new-instance v78, Ljava/util/Locale;

    const-string v3, "ru"

    const-string v5, "RU"

    move-object/from16 v0, v78

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    .local v78, "ruRussiaLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v78

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3272
    .end local v78    # "ruRussiaLocale":Ljava/util/Locale;
    :cond_2a
    const-string v3, "ptPortugal"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3274
    const-string v3, "sys.zte.language"

    const-string v5, "pt"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    const-string v3, "sys.zte.country"

    const-string v5, "PT"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    new-instance v77, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v5, "PT"

    move-object/from16 v0, v77

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    .local v77, "ptPortugalLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v77

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3280
    .end local v77    # "ptPortugalLocale":Ljava/util/Locale;
    :cond_2b
    const-string v3, "thThailand"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3282
    const-string v3, "sys.zte.language"

    const-string v5, "th"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    const-string v3, "sys.zte.country"

    const-string v5, "TH"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    new-instance v86, Ljava/util/Locale;

    const-string v3, "th"

    const-string v5, "TH"

    move-object/from16 v0, v86

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    .local v86, "thThailandLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3288
    .end local v86    # "thThailandLocale":Ljava/util/Locale;
    :cond_2c
    const-string v3, "arArabic"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3290
    const-string v3, "sys.zte.language"

    const-string v5, "ar"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    const-string v3, "sys.zte.country"

    const-string v5, "EG"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    new-instance v38, Ljava/util/Locale;

    const-string v3, "ar"

    const-string v5, "EG"

    move-object/from16 v0, v38

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    .local v38, "arArabicLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3296
    .end local v38    # "arArabicLocale":Ljava/util/Locale;
    :cond_2d
    const-string v3, "elGreece"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3298
    const-string v3, "sys.zte.language"

    const-string v5, "el"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    const-string v3, "sys.zte.country"

    const-string v5, "GR"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    new-instance v38, Ljava/util/Locale;

    const-string v3, "el"

    const-string v5, "GR"

    move-object/from16 v0, v38

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    .restart local v38    # "arArabicLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3304
    .end local v38    # "arArabicLocale":Ljava/util/Locale;
    :cond_2e
    const-string v3, "UZbek"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3306
    const-string v3, "sys.zte.language"

    const-string v5, "uz"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    const-string v3, "sys.zte.country"

    const-string v5, "UZ"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    new-instance v39, Ljava/util/Locale;

    const-string v3, "uz"

    const-string v5, "UZ"

    move-object/from16 v0, v39

    invoke-direct {v0, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    .local v39, "arUZbekLocale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/stbmc/maincontrol/McService;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 3317
    .end local v39    # "arUZbekLocale":Ljava/util/Locale;
    .end local v61    # "language":Ljava/lang/String;
    .end local v68    # "myBund":Landroid/os/Bundle;
    :sswitch_1a
    const-string v3, "MAIN_CONTROL"

    const-string v5, "============>>>MSG_SET_TIMEZONE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    .line 3319
    .restart local v68    # "myBund":Landroid/os/Bundle;
    const-string v3, "Systemzone"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    .line 3320
    .local v33, "SystemZone":Ljava/lang/String;
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "============>>>Get SystemTimeZone = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Lcom/stbmc/maincontrol/McService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/AlarmManager;

    .line 3324
    .local v36, "alarm":Landroid/app/AlarmManager;
    if-eqz v36, :cond_0

    .line 3326
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 3327
    const-string v3, "MAIN_CONTROL"

    const-string v5, "============>>>setTimeZone Success"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_11

    goto/16 :goto_0

    .line 3330
    .end local v36    # "alarm":Landroid/app/AlarmManager;
    :catch_11
    move-exception v48

    .line 3332
    .restart local v48    # "e":Ljava/lang/Exception;
    const-string v3, "MAIN_CONTROL"

    const-string v5, "============>>>SyncTimeZoneToSystem  Error"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3339
    .end local v33    # "SystemZone":Ljava/lang/String;
    .end local v48    # "e":Ljava/lang/Exception;
    .end local v68    # "myBund":Landroid/os/Bundle;
    :sswitch_1b
    const-string v3, "MAIN_CONTROL"

    const-string v5, "[DingQin] MSG_SET_RESOLUTION"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    .line 3341
    .restart local v68    # "myBund":Landroid/os/Bundle;
    const-string v3, "TvStandard"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v54

    .line 3342
    .local v54, "iTvStandard":I
    const-string v3, "ScanFreq"

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v52

    .line 3343
    .local v52, "iScanFreq":I
    const-string v3, "MAIN_CONTROL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DingQin] iTvStandard = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", iScanFreq = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    move/from16 v0, v54

    move/from16 v1, v52

    invoke-static {v5, v0, v1}, Lcom/stbmc/maincontrol/McService;->access$2500(Lcom/stbmc/maincontrol/McService;II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcommon/porting/MCPorting;->MCPorting_SetResolution(I)V

    goto/16 :goto_0

    .line 3351
    .end local v52    # "iScanFreq":I
    .end local v54    # "iTvStandard":I
    .end local v68    # "myBund":Landroid/os/Bundle;
    :sswitch_1c
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3352
    const-string v3, "MAIN_CONTROL"

    const-string v5, "@@@@====> SHOW_COUNT_DOWN_DLG_DHCP has been posted"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2700(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3359
    :sswitch_1d
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3360
    const-string v3, "MAIN_CONTROL"

    const-string v5, "@@@@====> SHOW_COUNT_DOWN_DLG_1403 has been posted"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2800(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3367
    :sswitch_1e
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$000()Lcom/stbmc/maincontrol/McService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3368
    const-string v3, "MAIN_CONTROL"

    const-string v5, "@@@@====> SHOW_COUNT_DOWN_DLG_PPPoE has been posted"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$2900(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 3374
    :sswitch_1f
    const-string v3, " MSG_GET_TOP_PACKAGE_NAME."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Lcom/stbmc/maincontrol/McService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/ActivityManager;

    .line 3376
    .restart local v37    # "am":Landroid/app/ActivityManager;
    const/16 v3, 0xa

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v57

    .line 3377
    .local v57, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v57, :cond_31

    .line 3379
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3381
    .local v56, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v42, v0

    .line 3382
    .restart local v42    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v42 .. v42}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v74

    .line 3383
    .local v74, "packageName":Ljava/lang/String;
    if-eqz v74, :cond_30

    .line 3385
    invoke-virtual/range {v74 .. v74}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$3002([B)[B

    .line 3386
    const-string v3, " packageName = %s, gTopPkgName.len = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v74, v5, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$3000()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3399
    .end local v42    # "cn":Landroid/content/ComponentName;
    .end local v56    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v74    # "packageName":Ljava/lang/String;
    :cond_2f
    :goto_a
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$3102(Z)Z

    goto/16 :goto_0

    .line 3391
    .restart local v42    # "cn":Landroid/content/ComponentName;
    .restart local v56    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v74    # "packageName":Ljava/lang/String;
    :cond_30
    const-string v5, " this package name is null, try next."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 3397
    .end local v42    # "cn":Landroid/content/ComponentName;
    .end local v56    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v74    # "packageName":Ljava/lang/String;
    :cond_31
    const-string v3, " RunningTaskInfo = null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/stbmc/maincontrol/ZLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 3403
    .end local v37    # "am":Landroid/app/ActivityManager;
    .end local v57    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :sswitch_20
    const-string v3, "MAIN_CONTROL"

    const-string v5, "Start factory reset for network gate."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/stbmc/maincontrol/McService$1;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v3}, Lcom/stbmc/maincontrol/McService;->access$3200(Lcom/stbmc/maincontrol/McService;)V

    goto/16 :goto_0

    .line 2459
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_17
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x18 -> :sswitch_13
        0x19 -> :sswitch_14
        0x1a -> :sswitch_16
        0x1b -> :sswitch_12
        0x1c -> :sswitch_15
        0x1e -> :sswitch_19
        0x1f -> :sswitch_1a
        0x20 -> :sswitch_1b
        0x21 -> :sswitch_1c
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1e
        0x24 -> :sswitch_1f
        0x25 -> :sswitch_20
        0x106 -> :sswitch_7
        0x10a -> :sswitch_9
        0x10b -> :sswitch_a
        0x10c -> :sswitch_b
        0x10d -> :sswitch_c
        0x10e -> :sswitch_d
        0x113 -> :sswitch_18
        0x114 -> :sswitch_8
    .end sparse-switch
.end method
