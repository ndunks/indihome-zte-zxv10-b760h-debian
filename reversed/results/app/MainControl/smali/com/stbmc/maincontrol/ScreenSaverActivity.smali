.class public Lcom/stbmc/maincontrol/ScreenSaverActivity;
.super Landroid/app/Activity;
.source "ScreenSaverActivity.java"


# static fields
.field private static screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;


# instance fields
.field private final SCREEN_SAVER_CLOSE:Ljava/lang/String;

.field private final Tag:Ljava/lang/String;

.field imageview:Landroid/widget/ImageView;

.field protected stopScreenSaverActivityReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const-string v0, "com.stbmc.maincontrol.screenclose"

    iput-object v0, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->SCREEN_SAVER_CLOSE:Ljava/lang/String;

    .line 19
    const-string v0, "ScreenSaverActivity"

    iput-object v0, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->Tag:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/stbmc/maincontrol/ScreenSaverActivity$2;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/ScreenSaverActivity$2;-><init>(Lcom/stbmc/maincontrol/ScreenSaverActivity;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->stopScreenSaverActivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/stbmc/maincontrol/ScreenSaverActivity;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/ScreenSaverActivity;)Lcom/stbmc/maincontrol/ScreenSaverActivity;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/ScreenSaverActivity;

    .prologue
    .line 16
    sput-object p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    return-object p0
.end method

.method public static actionToScreenSaverActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v1, Lcom/stbmc/maincontrol/ScreenSaverActivity;->screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/stbmc/maincontrol/ScreenSaverActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    const-string v0, "ScreenSaverActivity"

    const-string v1, "========ScreenSaverActivity=============="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->finish()V

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->setContentView(I)V

    .line 43
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->imageview:Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->imageview:Landroid/widget/ImageView;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    sput-object p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    .line 50
    iget-object v1, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->imageview:Landroid/widget/ImageView;

    new-instance v2, Lcom/stbmc/maincontrol/ScreenSaverActivity$1;

    invoke-direct {v2, p0}, Lcom/stbmc/maincontrol/ScreenSaverActivity$1;-><init>(Lcom/stbmc/maincontrol/ScreenSaverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.stbmc.maincontrol.screenclose"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->stopScreenSaverActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->stopScreenSaverActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/ScreenSaverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/stbmc/maincontrol/ScreenSaverActivity;->screenSaverAct:Lcom/stbmc/maincontrol/ScreenSaverActivity;

    .line 65
    return-void
.end method
