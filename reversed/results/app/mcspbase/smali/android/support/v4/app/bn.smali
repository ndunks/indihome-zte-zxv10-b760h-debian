.class public Landroid/support/v4/app/bn;
.super Landroid/support/v4/app/bt;


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bn;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/bm;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bn;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/bn;->a(Landroid/support/v4/app/bm;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bn;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bn;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bn;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/bn;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bn;->g:Z

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bn;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
