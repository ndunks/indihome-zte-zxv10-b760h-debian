.class Landroid/support/v4/view/aq;
.super Landroid/support/v4/view/ap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;Landroid/support/v4/view/at;)Landroid/view/MenuItem;
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/av;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ax;)Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/view/ar;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ar;-><init>(Landroid/support/v4/view/aq;Landroid/support/v4/view/at;)V

    invoke-static {p1, v0}, Landroid/support/v4/view/av;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ax;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/av;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/av;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/av;->c(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
