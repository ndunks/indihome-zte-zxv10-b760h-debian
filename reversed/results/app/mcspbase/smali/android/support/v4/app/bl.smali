.class public Landroid/support/v4/app/bl;
.super Landroid/support/v4/app/bt;


# instance fields
.field a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/bm;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/bl;->a(Landroid/support/v4/app/bm;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bl;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bl;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bl;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/bl;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bl;->g:Z

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bl;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bl;->a:Ljava/lang/CharSequence;

    return-object p0
.end method
