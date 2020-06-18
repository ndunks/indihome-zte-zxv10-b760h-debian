.class Lcom/stbmc/maincontrol/McService$APKInfo;
.super Ljava/lang/Object;
.source "McService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "APKInfo"
.end annotation


# instance fields
.field public bIsinstalled:Z

.field public filepath:Ljava/lang/String;

.field public pAppIcon:Landroid/graphics/drawable/Drawable;

.field public pAppName:Ljava/lang/CharSequence;

.field public pCurPkgName:Ljava/lang/String;

.field protected pkgmgr:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;
    .param p2, "pcontext"    # Landroid/content/Context;
    .param p3, "apkpath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 771
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    .line 765
    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    .line 766
    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;

    .line 767
    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;

    .line 768
    iput-boolean v6, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->bIsinstalled:Z

    .line 772
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    .line 773
    iget-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 774
    .local v1, "pPkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 777
    iget-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "curpkgnames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    aget-object v3, v0, v6

    if-eqz v3, :cond_1

    .line 779
    aget-object v3, v0, v6

    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    .line 784
    :goto_0
    const-string v3, "MAIN_CONTROL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v2, 0x0

    .line 798
    .local v2, "pPkgRes":Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->filepath:Ljava/lang/String;

    .line 800
    .end local v0    # "curpkgnames":[Ljava/lang/String;
    .end local v2    # "pPkgRes":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 781
    .restart local v0    # "curpkgnames":[Ljava/lang/String;
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public beValid()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->filepath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 805
    const/4 v0, 0x0

    .line 807
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkInstalled()Z
    .locals 5

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 814
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    const-string v2, "MAIN_CONTROL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgmgr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 824
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 825
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->bIsinstalled:Z

    .line 828
    :goto_1
    iget-boolean v2, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->bIsinstalled:Z

    return v2

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 827
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->bIsinstalled:Z

    goto :goto_1
.end method

.method public getApkIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getApkIcon_Internal(Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "PkgRes"    # Landroid/content/res/Resources;
    .param p2, "PkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 866
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 868
    if-eqz p1, :cond_1

    .line 872
    :try_start_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .line 876
    .local v0, "resnotfound":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 880
    .end local v0    # "resnotfound":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pkgmgr:Landroid/content/pm/PackageManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getApplicationName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getApplicationName_Internal(Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "PkgRes"    # Landroid/content/res/Resources;
    .param p2, "PkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 845
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 847
    if-eqz p1, :cond_1

    .line 851
    :try_start_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;

    return-object v1

    .line 853
    :catch_0
    move-exception v0

    .line 855
    .local v0, "resnotfound":Landroid/content/res/Resources$NotFoundException;
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 859
    .end local v0    # "resnotfound":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pCurPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->pAppName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/stbmc/maincontrol/McService$APKInfo;->bIsinstalled:Z

    return v0
.end method
