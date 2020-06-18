.class Landroid/support/v4/widget/u;
.super Landroid/support/v4/view/a/x;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/s;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/s;

    invoke-direct {p0}, Landroid/support/v4/view/a/x;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/s;Landroid/support/v4/widget/t;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/u;-><init>(Landroid/support/v4/widget/s;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/view/a/o;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/s;

    invoke-static {v0, p1}, Landroid/support/v4/widget/s;->a(Landroid/support/v4/widget/s;I)Landroid/support/v4/view/a/o;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/s;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/s;->a(Landroid/support/v4/widget/s;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
