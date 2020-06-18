.class Landroid/support/v4/view/av;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/ax;)Landroid/view/MenuItem;
    .locals 1

    new-instance v0, Landroid/support/v4/view/aw;

    invoke-direct {v0, p1}, Landroid/support/v4/view/aw;-><init>(Landroid/support/v4/view/ax;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method
