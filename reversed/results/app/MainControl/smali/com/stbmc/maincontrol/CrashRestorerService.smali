.class public Lcom/stbmc/maincontrol/CrashRestorerService;
.super Landroid/app/Service;
.source "CrashRestorerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;,
        Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;
    }
.end annotation


# static fields
.field private static DMR_COMP_EVT_PUSH_IPTV:I

.field private static cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

.field private static clientManagerProxy:Lcom/stbmc/maincontrol/ClientManager;

.field private static compCom:Lcommon/mcspevtmanager/McspCompCommun;


# instance fields
.field CrashRestoretask:Ljava/util/TimerTask;

.field CrashRestoryElapse:Ljava/util/Timer;

.field TAG:Ljava/lang/String;

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private cancel:Landroid/widget/Button;

.field mLp:Landroid/view/WindowManager$LayoutParams;

.field private mV:Landroid/view/View;

.field nocancel:Z

.field private ok:Landroid/widget/Button;

.field state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

.field wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/stbmc/maincontrol/CrashRestorerService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    .line 48
    new-instance v0, Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-direct {v0}, Lcommon/android/mscpcfg/McspCfgmanager;-><init>()V

    sput-object v0, Lcom/stbmc/maincontrol/CrashRestorerService;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    .line 49
    const v0, 0x438000

    sput v0, Lcom/stbmc/maincontrol/CrashRestorerService;->DMR_COMP_EVT_PUSH_IPTV:I

    .line 56
    new-instance v0, Lcom/stbmc/maincontrol/ClientManager;

    invoke-direct {v0}, Lcom/stbmc/maincontrol/ClientManager;-><init>()V

    sput-object v0, Lcom/stbmc/maincontrol/CrashRestorerService;->clientManagerProxy:Lcom/stbmc/maincontrol/ClientManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const-string v0, "CrashRestorer"

    iput-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->nocancel:Z

    .line 62
    sget-object v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    .line 102
    new-instance v0, Lcom/stbmc/maincontrol/CrashRestorerService$3;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CrashRestorerService$3;-><init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->CrashRestoretask:Ljava/util/TimerTask;

    .line 135
    new-instance v0, Lcom/stbmc/maincontrol/CrashRestorerService$4;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CrashRestorerService$4;-><init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcommon/android/mscpcfg/McspCfgmanager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/stbmc/maincontrol/CrashRestorerService;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/stbmc/maincontrol/ClientManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/stbmc/maincontrol/CrashRestorerService;->clientManagerProxy:Lcom/stbmc/maincontrol/ClientManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mV:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->ok:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public static intToByte(I)[B
    .locals 4
    .param p0, "a"    # I

    .prologue
    .line 270
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 271
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 273
    new-instance v2, Ljava/lang/Integer;

    and-int/lit16 v3, p0, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 274
    shr-int/lit8 p0, p0, 0x8

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-object v0
.end method


# virtual methods
.method public Comp_init()V
    .locals 5

    .prologue
    .line 228
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "compName":Ljava/lang/String;
    new-instance v2, Lcommon/mcspevtmanager/McspCompCommun;

    invoke-direct {v2, v0}, Lcommon/mcspevtmanager/McspCompCommun;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/stbmc/maincontrol/CrashRestorerService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    .line 230
    sget-object v2, Lcom/stbmc/maincontrol/CrashRestorerService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v3, "----------> compCom null error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v2, Lcom/stbmc/maincontrol/CrashRestorerService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_SrvEvt_Init()I

    move-result v1

    .line 236
    .local v1, "ret":I
    if-gez v1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCSP_SrvEvt_Init error! ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCSP_SrvEvt_Init success! ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v2, Lcom/stbmc/maincontrol/CrashRestorerService;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    sget-object v3, Lcom/stbmc/maincontrol/CrashRestorerService;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->newComoCommun(Lcommon/mcspevtmanager/McspCompCommun;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v2, "enter CrashRestorerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CrashRestorerService;->Comp_init()V

    .line 68
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->CrashRestoryElapse:Ljava/util/Timer;

    .line 69
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->CrashRestoryElapse:Ljava/util/Timer;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->CrashRestoretask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ZTESTB.CrashRestorer.Key"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/CrashRestorerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CrashRestorerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mV:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mV:Landroid/view/View;

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->ok:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mV:Landroid/view/View;

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->cancel:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->ok:Landroid/widget/Button;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->cancel:Landroid/widget/Button;

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 80
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->ok:Landroid/widget/Button;

    new-instance v2, Lcom/stbmc/maincontrol/CrashRestorerService$1;

    invoke-direct {v2, p0}, Lcom/stbmc/maincontrol/CrashRestorerService$1;-><init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->cancel:Landroid/widget/Button;

    new-instance v2, Lcom/stbmc/maincontrol/CrashRestorerService$2;

    invoke-direct {v2, p0}, Lcom/stbmc/maincontrol/CrashRestorerService$2;-><init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    .line 196
    new-instance v0, Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;-><init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V

    .line 197
    .local v0, "t":Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;
    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CrashRestorerService$ReceiveThread;->start()V

    .line 198
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v2, "start CrashRestorerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-boolean v4, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->nocancel:Z

    .line 200
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CrashRestorerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->wm:Landroid/view/WindowManager;

    .line 201
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 202
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 203
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 207
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 208
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mV:Landroid/view/View;

    iget-object v3, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService;->mV:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 210
    return v4
.end method
