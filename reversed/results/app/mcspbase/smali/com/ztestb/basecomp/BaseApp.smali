.class public Lcom/ztestb/basecomp/BaseApp;
.super Landroid/app/Application;


# static fields
.field private static final a:Ljava/lang/String; = "BaseComp.Java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "BaseComp.Java"

    const-string v1, "BaseApp start BaseComponentService now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.ztestb.basecomp.startBaseCompService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.ztestb.basecomp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ztestb/basecomp/BaseApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
