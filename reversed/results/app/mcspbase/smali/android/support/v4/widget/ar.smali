.class Landroid/support/v4/widget/ar;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/as;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/as;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0

    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setImeOptions(I)V

    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 0

    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setInputType(I)V

    return-void
.end method