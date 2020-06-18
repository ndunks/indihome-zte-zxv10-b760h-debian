.class Landroid/support/v4/view/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ax;


# instance fields
.field final synthetic a:Landroid/support/v4/view/at;

.field final synthetic b:Landroid/support/v4/view/aq;


# direct methods
.method constructor <init>(Landroid/support/v4/view/aq;Landroid/support/v4/view/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ar;->b:Landroid/support/v4/view/aq;

    iput-object p2, p0, Landroid/support/v4/view/ar;->a:Landroid/support/v4/view/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ar;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ar;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p1}, Landroid/support/v4/view/at;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
