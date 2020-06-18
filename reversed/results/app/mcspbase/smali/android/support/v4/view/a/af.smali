.class public Landroid/support/v4/view/a/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/view/a/ai;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/aj;

    invoke-direct {v0}, Landroid/support/v4/view/a/aj;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/ah;

    invoke-direct {v0}, Landroid/support/v4/view/a/ah;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/a/ag;

    invoke-direct {v0}, Landroid/support/v4/view/a/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/a/ak;

    invoke-direct {v0}, Landroid/support/v4/view/a/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/support/v4/view/a/af;)Landroid/support/v4/view/a/af;
    .locals 3

    new-instance v0, Landroid/support/v4/view/a/af;

    sget-object v1, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v2, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/af;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b()Landroid/support/v4/view/a/af;
    .locals 2

    new-instance v0, Landroid/support/v4/view/a/af;

    sget-object v1, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    invoke-interface {v1}, Landroid/support/v4/view/a/ai;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/af;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->b(Ljava/lang/Object;Z)V

    return-void
.end method

.method public c()Landroid/support/v4/view/a/o;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->m(Ljava/lang/Object;)Landroid/support/v4/view/a/o;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->d(Ljava/lang/Object;Z)V

    return-void
.end method

.method public d()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->p(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->h(Ljava/lang/Object;I)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->c(Ljava/lang/Object;Z)V

    return-void
.end method

.method public e(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->f(Ljava/lang/Object;I)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->e(Ljava/lang/Object;Z)V

    return-void
.end method

.method public e()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->q(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/support/v4/view/a/af;

    iget-object v2, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->g(Ljava/lang/Object;I)V

    return-void
.end method

.method public f()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->i(Ljava/lang/Object;I)V

    return-void
.end method

.method public g()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->t(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->j(Ljava/lang/Object;I)V

    return-void
.end method

.method public h()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public i()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->u(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/ai;->e(Ljava/lang/Object;I)V

    return-void
.end method

.method public k()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->o(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->k(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->l(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->w(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->x(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->j(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->n(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public x()Landroid/os/Parcelable;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->i(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/ai;->v(Ljava/lang/Object;)V

    return-void
.end method
