.class final Landroid/support/v4/view/a/ad;
.super Landroid/view/accessibility/AccessibilityNodeProvider;


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/ae;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/ae;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/a/ad;->a:Landroid/support/v4/view/a/ae;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/ad;->a:Landroid/support/v4/view/a/ae;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/ae;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/ad;->a:Landroid/support/v4/view/a/ae;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/a/ae;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/ad;->a:Landroid/support/v4/view/a/ae;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/a/ae;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
