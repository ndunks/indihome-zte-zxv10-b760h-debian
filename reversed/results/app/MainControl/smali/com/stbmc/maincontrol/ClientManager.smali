.class public Lcom/stbmc/maincontrol/ClientManager;
.super Ljava/lang/Object;
.source "ClientManager.java"


# static fields
.field public static final CMD_WIRELESSKEY_LEARNKEY_MAP:I = 0x465004

.field public static final MC_NET_FAIL_NO_WIRE:I = 0x76

.field public static final MC_NET_FAIL_NO_WIRELESS_CARD:I = 0x75

.field public static final NETACCESS:Ljava/lang/String; = "MCSP_NetAccess"

.field public static final NET_HARDWARE_OK:I = 0x0

.field public static final NET_MODE_BOTHCARD:I = 0x2

.field public static final NET_MODE_WIRE:I = 0x0

.field public static final NET_MODE_WIRELESS:I = 0x1

.field static TAG:Ljava/lang/String; = null

.field public static final WIRELESSKEY:Ljava/lang/String; = "MCSP_KeyManager"

.field public static final WIRELESSKEY_COMP_CMD_OFFSET:I = 0x465000

.field private static cc_opened:I = 0x0

.field private static cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager; = null

.field private static compCom:Lcommon/mcspevtmanager/McspCompCommun; = null

.field private static connect_ok:Z = false

.field public static final defaultStbConfig:Ljava/lang/String; = "/system/etc/stbconfig_bak"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mDestCompName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string v0, "ClientManager"

    sput-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    .line 78
    sput v2, Lcom/stbmc/maincontrol/ClientManager;->cc_opened:I

    .line 80
    new-instance v0, Lcommon/mcspevtmanager/McspCompCommun;

    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcommon/mcspevtmanager/McspCompCommun;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    .line 81
    new-instance v0, Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-direct {v0}, Lcommon/android/mscpcfg/McspCfgmanager;-><init>()V

    sput-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    .line 83
    sput-boolean v2, Lcom/stbmc/maincontrol/ClientManager;->connect_ok:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "cfg"

    iput-object v0, p0, Lcom/stbmc/maincontrol/ClientManager;->mDestCompName:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/stbmc/maincontrol/ClientManager;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "cfg"

    iput-object v0, p0, Lcom/stbmc/maincontrol/ClientManager;->mDestCompName:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/stbmc/maincontrol/ClientManager;->setHandler(Landroid/os/Handler;)V

    .line 94
    invoke-direct {p0}, Lcom/stbmc/maincontrol/ClientManager;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "destCompName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "cfg"

    iput-object v0, p0, Lcom/stbmc/maincontrol/ClientManager;->mDestCompName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/stbmc/maincontrol/ClientManager;->mDestCompName:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/stbmc/maincontrol/ClientManager;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "destCompName"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "cfg"

    iput-object v0, p0, Lcom/stbmc/maincontrol/ClientManager;->mDestCompName:Ljava/lang/String;

    .line 105
    invoke-static {p2}, Lcom/stbmc/maincontrol/ClientManager;->setHandler(Landroid/os/Handler;)V

    .line 106
    iput-object p1, p0, Lcom/stbmc/maincontrol/ClientManager;->mDestCompName:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/stbmc/maincontrol/ClientManager;->init()V

    .line 108
    return-void
.end method

.method private RegisterMethod()V
    .locals 6

    .prologue
    .line 563
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "className":Ljava/lang/String;
    const-string v1, "notifyProc"

    .line 565
    .local v1, "notifyCbName":Ljava/lang/String;
    const-string v2, "syncProc"

    .line 566
    .local v2, "syncProcCbName":Ljava/lang/String;
    sget-object v3, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in RegisterMethod(): received: className = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifyCbName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object v3, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",tid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v3, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_RegisterMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method

.method public static byteToInt([B)I
    .locals 4
    .param p0, "bArray"    # [B

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "a":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 616
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return v0
.end method

.method public static byteTobinary([B)Ljava/lang/String;
    .locals 8
    .param p0, "bs"    # [B

    .prologue
    const/16 v7, 0x8

    .line 623
    const-string v0, "00000000"

    .line 624
    .local v0, "ZERO":Ljava/lang/String;
    const-string v3, ""

    .line 625
    .local v3, "sResult":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 627
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 629
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 633
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_0

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00000000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 636
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 640
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 112
    sget v2, Lcom/stbmc/maincontrol/ClientManager;->cc_opened:I

    if-nez v2, :cond_0

    .line 114
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_SrvEvt_Init()I

    move-result v1

    .line 115
    .local v1, "ret":I
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compcom first open,ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 118
    sput v5, Lcom/stbmc/maincontrol/ClientManager;->cc_opened:I

    .line 122
    .end local v1    # "ret":I
    :cond_0
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    sget-object v3, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->newComoCommun(Lcommon/mcspevtmanager/McspCompCommun;)V

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/ClientManager;->Ping()I

    move-result v2

    if-nez v2, :cond_2

    .line 127
    sput-boolean v5, Lcom/stbmc/maincontrol/ClientManager;->connect_ok:Z

    .line 132
    :cond_1
    return-void

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static intToByte(I)[B
    .locals 4
    .param p0, "item"    # I

    .prologue
    .line 602
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 603
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 605
    new-instance v2, Ljava/lang/Integer;

    and-int/lit16 v3, p0, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 606
    shr-int/lit8 p0, p0, 0x8

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :cond_0
    return-object v0
.end method

.method public static notifyProc(I[BI)V
    .locals 5
    .param p0, "eventId"    # I
    .param p1, "aData"    # [B
    .param p2, "dataLen"    # I

    .prologue
    .line 539
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "In EventNotify(): received: eventId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0x"

    .line 540
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", aData.length= "

    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/stbmc/maincontrol/ClientManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 544
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v3, "handler for treat event is null, event ignored !!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 549
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 553
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 554
    .local v1, "msg":Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 555
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 557
    sget-object v2, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v3, "In EventNotify(): sending message to handler..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/stbmc/maincontrol/ClientManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 644
    sput-object p0, Lcom/stbmc/maincontrol/ClientManager;->mHandler:Landroid/os/Handler;

    .line 645
    return-void
.end method

.method private static syncProc(I[BI[B[I)I
    .locals 1
    .param p0, "cmd"    # I
    .param p1, "aData"    # [B
    .param p2, "dataLen"    # I
    .param p3, "aReply"    # [B
    .param p4, "aReplyLen"    # [I

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "before Destroy()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_SrvEvt_Uninit()I

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/stbmc/maincontrol/ClientManager;->cc_opened:I

    .line 138
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/stbmc/maincontrol/ClientManager;->setHandler(Landroid/os/Handler;)V

    .line 142
    :cond_0
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "after Destroy()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public GetConfigInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "szSection"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->GetInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GetConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "szSection"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LearnKeyMap(II)I
    .locals 12
    .param p1, "rawKeyValue"    # I
    .param p2, "stbKeyValue"    # I

    .prologue
    const/4 v11, -0x1

    .line 389
    :try_start_0
    const-string v0, "Common"

    const-string v1, "ExStandbyIRCode"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/stbmc/maincontrol/ClientManager;->SetConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "before LearnKeyMap()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 392
    .local v3, "szData":[B
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 393
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 394
    .local v6, "iReplyLen":[I
    const/4 v0, 0x0

    const/16 v1, 0x400

    aput v1, v6, v0

    .line 396
    invoke-static {p1}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v8

    .line 397
    .local v8, "byte_temp":[B
    invoke-static {p2}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v7

    .line 399
    .local v7, "byte_stbkey":[B
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v8, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v7, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in LearnKeyMap() cmd=CMD_WIRELESSKEY_LEARNKEY_MAP, value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x"

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x465004

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",rawKeyValue = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",stbKeyValue = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "MCSP_KeyManager"

    const v2, 0x465004

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v10

    .line 408
    .local v10, "iRet":I
    if-ne v10, v11, :cond_0

    .line 410
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "CompCommun.MCSP_InvokeService() error!!! iRet = -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v7    # "byte_stbkey":[B
    .end local v8    # "byte_temp":[B
    .end local v10    # "iRet":I
    :goto_0
    return v11

    .line 413
    .restart local v3    # "szData":[B
    .restart local v5    # "aReply":[B
    .restart local v6    # "iReplyLen":[I
    .restart local v7    # "byte_stbkey":[B
    .restart local v8    # "byte_temp":[B
    .restart local v10    # "iRet":I
    :cond_0
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "after LearnKeyMap()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {v5}, Lcom/stbmc/maincontrol/ClientManager;->byteToInt([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 415
    .local v11, "strReply":I
    goto :goto_0

    .line 417
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v7    # "byte_stbkey":[B
    .end local v8    # "byte_temp":[B
    .end local v10    # "iRet":I
    .end local v11    # "strReply":I
    :catch_0
    move-exception v9

    .line 420
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "in LearnKeyMap(), catch Exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public Ping()I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-virtual {v0}, Lcommon/android/mscpcfg/McspCfgmanager;->PingCfg()I

    move-result v0

    return v0
.end method

.method public SetConfigInteger(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "szSection"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "iValue"    # I

    .prologue
    .line 210
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "section = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-virtual {v0, p1, p2, p3}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public SetConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "szSection"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "szValue"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-virtual {v0, p1, p2, p3}, Lcommon/android/mscpcfg/McspCfgmanager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SubscribeEvent([I)V
    .locals 4
    .param p1, "EVENT_IDS"    # [I

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/stbmc/maincontrol/ClientManager;->RegisterMethod()V

    .line 583
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v2, "in SubscribeEvent(): subscribeing event ...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 586
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SubscribeEvent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_0
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTSubscribe([II)I

    .line 590
    return-void
.end method

.method public UnsubscribeEvent([I)V
    .locals 3
    .param p1, "EVENT_IDS"    # [I

    .prologue
    .line 594
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "before UnsubscribeEvent()!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTUnsubscribe([II)I

    .line 597
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "after UnsubscribeEvent()!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method public UpdateConfigFromFs(Ljava/lang/String;)I
    .locals 1
    .param p1, "szFsFileName"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-virtual {v0, p1}, Lcommon/android/mscpcfg/McspCfgmanager;->UpdateConfigFromFs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cc_evtPost(I[BI)I
    .locals 2
    .param p1, "iEventId"    # I
    .param p2, "aEventPara"    # [B
    .param p3, "paraLen"    # I

    .prologue
    .line 157
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v1, p1, p2, p3}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    move-result v0

    .line 158
    .local v0, "ret":I
    return v0
.end method

.method public cc_evtSubscribe([II)I
    .locals 1
    .param p1, "aEvents"    # [I
    .param p2, "eventNum"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0, p1, p2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTSubscribe([II)I

    move-result v0

    return v0
.end method

.method public cc_evtUnsubscribe([II)I
    .locals 2
    .param p1, "aEvents"    # [I
    .param p2, "eventNum"    # I

    .prologue
    .line 151
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v1, p1, p2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTUnsubscribe([II)I

    move-result v0

    .line 152
    .local v0, "ret":I
    return v0
.end method

.method public cc_registerMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "classObj"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "notifyCbName"    # Ljava/lang/String;
    .param p4, "syncProcCbName"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v1, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_RegisterMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "ret":I
    return v0
.end method

.method public cc_syncSend(Ljava/lang/String;I[BI[B[I)I
    .locals 8
    .param p1, "destCompName"    # Ljava/lang/String;
    .param p2, "cmd"    # I
    .param p3, "aData"    # [B
    .param p4, "dataLen"    # I
    .param p5, "aReply"    # [B
    .param p6, "aReplyLen"    # [I

    .prologue
    .line 170
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 176
    .local v7, "ret":I
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cc_syncSend......ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v7
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-virtual {v0, p1, p2}, Lcommon/android/mscpcfg/McspCfgmanager;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getApList()[Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 498
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iEventId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x415008

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 500
    .local v3, "aData":[B
    const/16 v7, 0x800

    .line 501
    .local v7, "MaxLen":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 502
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 504
    const/4 v4, 0x4

    .line 505
    .local v4, "aDataLen":I
    new-array v5, v7, [B

    .line 506
    .local v5, "pAPlist":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 507
    .local v6, "iDataLen":[I
    const/4 v0, 0x0

    aput v7, v6, v0

    .line 509
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "MCSP_NetAccess"

    const v2, 0x41500a

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    .line 515
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    const/16 v2, 0x7f8

    const-string v14, "GBK"

    invoke-direct {v0, v5, v1, v2, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 523
    .local v12, "strtemp":Ljava/lang/String;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strtemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "apSinInfo":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v13

    .line 534
    .end local v8    # "apSinInfo":[Ljava/lang/String;
    .end local v12    # "strtemp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 516
    :catch_0
    move-exception v10

    .line 517
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "change code error ap_info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v13

    .line 519
    goto :goto_0

    .line 529
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "apSinInfo":[Ljava/lang/String;
    .restart local v12    # "strtemp":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v8

    if-ge v11, v0, :cond_1

    .line 531
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====apSinInfo======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v8, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 533
    :cond_1
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====apSinInfo length======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectState(I)I
    .locals 14
    .param p1, "nettype"    # I

    .prologue
    const/4 v13, -0x1

    .line 224
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "Before getConnectState()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x4

    :try_start_0
    new-array v3, v0, [B

    .line 228
    .local v3, "szData":[B
    const/16 v0, 0xc

    new-array v5, v0, [B

    .line 229
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 230
    .local v6, "iReplyLen":[I
    const/4 v0, 0x0

    const/16 v1, 0xc

    aput v1, v6, v0

    .line 232
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input parameter is: cmd=McspEvt.CMD_NA_GETCONNECTSTATE, value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x415004

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "MCSP_NetAccess"

    const v2, 0x415004

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v10

    .line 235
    .local v10, "iRet":I
    if-ne v10, v13, :cond_0

    .line 237
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "compCom.MCSP_InvokeService error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v13

    .line 254
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v10    # "iRet":I
    :goto_0
    return v7

    .line 240
    .restart local v3    # "szData":[B
    .restart local v5    # "aReply":[B
    .restart local v6    # "iReplyLen":[I
    .restart local v10    # "iRet":I
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 241
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 242
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 243
    .local v12, "sessionID":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 244
    .local v11, "returnResult":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 246
    .local v7, "NetState":I
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "After getConnectState()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v7    # "NetState":I
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "iRet":I
    .end local v11    # "returnResult":I
    .end local v12    # "sessionID":I
    :catch_0
    move-exception v9

    .line 252
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "catch Exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v13

    .line 254
    goto :goto_0
.end method

.method public getNetHardwareState()I
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 263
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "begin getNetHardwareState()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x4

    :try_start_0
    new-array v3, v0, [B

    .line 267
    .local v3, "szData":[B
    const/16 v0, 0xc

    new-array v5, v0, [B

    .line 268
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 269
    .local v6, "iReplyLen":[I
    const/4 v0, 0x0

    const/16 v1, 0xc

    aput v1, v6, v0

    .line 270
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "MCSP_NetAccess"

    const v2, 0x415005

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v9

    .line 272
    .local v9, "iRet":I
    if-ne v9, v11, :cond_0

    .line 274
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "getNetHardwareState compCom.MCSP_InvokeService error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 291
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v9    # "iRet":I
    :goto_0
    return v10

    .line 277
    .restart local v3    # "szData":[B
    .restart local v5    # "aReply":[B
    .restart local v6    # "iReplyLen":[I
    .restart local v9    # "iRet":I
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 278
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 280
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 281
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 283
    .local v10, "netHardwareState":I
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netHardwareState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "normal end getNetHardwareState()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "iRet":I
    .end local v10    # "netHardwareState":I
    :catch_0
    move-exception v8

    .line 289
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "getNetHardwareState catch Exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v10, v11

    .line 291
    goto :goto_0
.end method

.method public rebootSys()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 430
    :try_start_0
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "before rebootSys()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 432
    .local v3, "szData":[B
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 433
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 434
    .local v6, "iReplyLen":[I
    const/4 v0, 0x0

    const/16 v1, 0x400

    aput v1, v6, v0

    .line 436
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v7

    .line 437
    .local v7, "byte_temp":[B
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v7, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in rebootSys() cmd=ProductEvtClass.EVENT_STBMC_JAVATOC_REBOOT, value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x"

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x1408007

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "AP_C_MC"

    const v2, 0x1408007

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v9

    .line 443
    .local v9, "iRet":I
    if-ne v9, v10, :cond_0

    .line 445
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "CompCommun.MCSP_InvokeService() error!!! iRet = -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v7    # "byte_temp":[B
    .end local v9    # "iRet":I
    :goto_0
    return v10

    .line 448
    .restart local v3    # "szData":[B
    .restart local v5    # "aReply":[B
    .restart local v6    # "iReplyLen":[I
    .restart local v7    # "byte_temp":[B
    .restart local v9    # "iRet":I
    :cond_0
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "after rebootSys()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {v5}, Lcom/stbmc/maincontrol/ClientManager;->byteToInt([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 450
    .local v10, "strReply":I
    goto :goto_0

    .line 452
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v7    # "byte_temp":[B
    .end local v9    # "iRet":I
    .end local v10    # "strReply":I
    :catch_0
    move-exception v8

    .line 455
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "in rebootSys(), catch Exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startnet(I)I
    .locals 13
    .param p1, "nettype"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 300
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "Before startnet()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 305
    :try_start_0
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "input parameter error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 336
    :goto_0
    return v0

    .line 308
    :cond_0
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 309
    .local v3, "szData":[B
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 310
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 311
    .local v6, "iReplyLen":[I
    const/4 v0, 0x0

    const/16 v1, 0x400

    aput v1, v6, v0

    .line 313
    invoke-static {p1}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input parameter is: cmd=McspEvt.CMD_NA_STARTNETLINK, value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x415001

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",nettype = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "MCSP_NetAccess"

    const v2, 0x415001

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v8

    .line 317
    .local v8, "iRet":I
    if-ne v8, v11, :cond_1

    .line 319
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "compCom.MCSP_InvokeService error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 320
    goto/16 :goto_0

    .line 322
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 323
    .local v10, "strReply":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "strData":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 326
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "return data error!!!,strData= null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 327
    goto/16 :goto_0

    .line 329
    :cond_2
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "After startnet()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v12

    .line 330
    goto/16 :goto_0

    .line 332
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v8    # "iRet":I
    .end local v9    # "strData":Ljava/lang/String;
    .end local v10    # "strReply":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 334
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "catch Exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v11

    .line 336
    goto/16 :goto_0
.end method

.method public stopnet(I)I
    .locals 13
    .param p1, "nettype"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 342
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "Before stopnet()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 347
    :try_start_0
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "input parameter err!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 379
    :goto_0
    return v0

    .line 350
    :cond_0
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 351
    .local v3, "szData":[B
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 352
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 353
    .local v6, "iReplyLen":[I
    const/4 v0, 0x0

    const/16 v1, 0x400

    aput v1, v6, v0

    .line 355
    invoke-static {p1}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/stbmc/maincontrol/ClientManager;->intToByte(I)[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input parameter is: cmd=McspEvt.CMD_NA_STOPNETLINK, value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x415002

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",nettype = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const-string v1, "MCSP_NetAccess"

    const v2, 0x415002

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v8

    .line 360
    .local v8, "iRet":I
    if-ne v8, v11, :cond_1

    .line 362
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "compCom.MCSP_InvokeService error iRet = -1 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 363
    goto/16 :goto_0

    .line 365
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 366
    .local v10, "strReply":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "strData":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 369
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "return data = null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 370
    goto/16 :goto_0

    .line 372
    :cond_2
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "After stopnet()......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v12

    .line 373
    goto/16 :goto_0

    .line 375
    .end local v3    # "szData":[B
    .end local v5    # "aReply":[B
    .end local v6    # "iReplyLen":[I
    .end local v8    # "iRet":I
    .end local v9    # "strData":Ljava/lang/String;
    .end local v10    # "strReply":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 377
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/stbmc/maincontrol/ClientManager;->TAG:Ljava/lang/String;

    const-string v1, "catch Exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v11

    .line 379
    goto/16 :goto_0
.end method
