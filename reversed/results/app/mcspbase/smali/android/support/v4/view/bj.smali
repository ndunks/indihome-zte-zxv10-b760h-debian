.class Landroid/support/v4/view/bj;
.super Landroid/database/DataSetObserver;

# interfaces
.implements Landroid/support/v4/view/dc;
.implements Landroid/support/v4/view/dd;


# instance fields
.field final synthetic a:Landroid/support/v4/view/bh;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/v4/view/bh;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/bh;Landroid/support/v4/view/bi;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/bj;-><init>(Landroid/support/v4/view/bh;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/view/bj;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, v2, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v3, v3, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/bh;->a(ILandroid/support/v4/view/bd;)V

    iget-object v1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    invoke-static {v1}, Landroid/support/v4/view/bh;->a(Landroid/support/v4/view/bh;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    invoke-static {v0}, Landroid/support/v4/view/bh;->a(Landroid/support/v4/view/bh;)F

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, v2, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/bh;->a(IFZ)V

    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/bh;->a(IFZ)V

    return-void
.end method

.method public a(Landroid/support/v4/view/bd;Landroid/support/v4/view/bd;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/bh;->a(Landroid/support/v4/view/bd;Landroid/support/v4/view/bd;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/view/bj;->b:I

    return-void
.end method

.method public onChanged()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, v2, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v3, v3, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/bh;->a(ILandroid/support/v4/view/bd;)V

    iget-object v1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    invoke-static {v1}, Landroid/support/v4/view/bh;->a(Landroid/support/v4/view/bh;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    invoke-static {v0}, Landroid/support/v4/view/bh;->a(Landroid/support/v4/view/bh;)F

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, p0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bh;

    iget-object v2, v2, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/bh;->a(IFZ)V

    return-void
.end method
