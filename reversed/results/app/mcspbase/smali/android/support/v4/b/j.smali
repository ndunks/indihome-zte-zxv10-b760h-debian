.class public Landroid/support/v4/b/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final b:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final c:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final d:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final e:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final f:I = 0x4000

.field public static final g:I = 0x8000

.field private static final h:Landroid/support/v4/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/b/n;

    invoke-direct {v0}, Landroid/support/v4/b/n;-><init>()V

    sput-object v0, Landroid/support/v4/b/j;->h:Landroid/support/v4/b/k;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/b/m;

    invoke-direct {v0}, Landroid/support/v4/b/m;-><init>()V

    sput-object v0, Landroid/support/v4/b/j;->h:Landroid/support/v4/b/k;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/b/l;

    invoke-direct {v0}, Landroid/support/v4/b/l;-><init>()V

    sput-object v0, Landroid/support/v4/b/j;->h:Landroid/support/v4/b/k;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/support/v4/b/j;->h:Landroid/support/v4/b/k;

    invoke-interface {v0, p0}, Landroid/support/v4/b/k;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/support/v4/b/j;->h:Landroid/support/v4/b/k;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/support/v4/b/j;->h:Landroid/support/v4/b/k;

    invoke-interface {v0, p0}, Landroid/support/v4/b/k;->b(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
