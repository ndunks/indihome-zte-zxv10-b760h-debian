.class Lcom/stbmc/maincontrol/McService$11;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->onCreate()V
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
    .line 5850
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$11;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 5853
    :try_start_0
    const-string v8, "MAIN_CONTROL"

    const-string v9, "ZteStbmc preinstall apk"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    new-instance v2, Ljava/io/File;

    const-string v8, "/system/preinstall/"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5855
    .local v2, "file":Ljava/io/File;
    const-string v6, "apk"

    .line 5857
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5859
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 5860
    .local v4, "files":[Ljava/io/File;
    array-length v8, v4

    if-lez v8, :cond_2

    .line 5861
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v8, v4

    if-ge v5, v8, :cond_2

    .line 5863
    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5865
    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    .line 5867
    new-instance v3, Ljava/io/File;

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5868
    .local v3, "fileInstall":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5870
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    new-instance v0, Lcom/stbmc/maincontrol/McService$APKInfo;

    iget-object v8, p0, Lcom/stbmc/maincontrol/McService$11;->this$0:Lcom/stbmc/maincontrol/McService;

    iget-object v9, p0, Lcom/stbmc/maincontrol/McService$11;->this$0:Lcom/stbmc/maincontrol/McService;

    aget-object v10, v4, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v9, v10}, Lcom/stbmc/maincontrol/McService$APKInfo;-><init>(Lcom/stbmc/maincontrol/McService;Landroid/content/Context;Ljava/lang/String;)V

    .line 5873
    .local v0, "apkinfo":Lcom/stbmc/maincontrol/McService$APKInfo;
    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McService$APKInfo;->checkInstalled()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 5875
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apk has installed, return."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    .end local v0    # "apkinfo":Lcom/stbmc/maincontrol/McService$APKInfo;
    .end local v3    # "fileInstall":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5879
    .restart local v0    # "apkinfo":Lcom/stbmc/maincontrol/McService$APKInfo;
    .restart local v3    # "fileInstall":Ljava/io/File;
    :cond_1
    const-string v8, "MAIN_CONTROL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apk not installed ."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5880
    iget-object v8, p0, Lcom/stbmc/maincontrol/McService$11;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-virtual {v8}, Lcom/stbmc/maincontrol/McService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 5881
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/stbmc/maincontrol/McService$11;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v8}, Lcom/stbmc/maincontrol/McService;->access$2600(Lcom/stbmc/maincontrol/McService;)Lcommon/porting/MCPorting;

    move-result-object v8

    aget-object v9, v4, v5

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcommon/porting/MCPorting;->MCPorting_PackageInstall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5890
    .end local v0    # "apkinfo":Lcom/stbmc/maincontrol/McService$APKInfo;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInstall":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "j":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 5891
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5893
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method
