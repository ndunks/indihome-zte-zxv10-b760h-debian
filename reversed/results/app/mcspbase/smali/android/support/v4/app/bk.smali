.class public Landroid/support/v4/app/bk;
.super Landroid/support/v4/app/bt;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/bm;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/bk;->a(Landroid/support/v4/app/bm;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bk;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bk;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bk;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bk;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bk;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/bk;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bk;->c:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bk;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/bk;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bk;->g:Z

    return-object p0
.end method
