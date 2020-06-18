.class Lcom/stbmc/maincontrol/McService$MyFilenameFilter;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/McService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyFilenameFilter"
.end annotation


# instance fields
.field private p:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/McService$MyFilenameFilter;->p:Ljava/util/regex/Pattern;

    .line 892
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/stbmc/maincontrol/McService$MyFilenameFilter;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
