.class public Landroid/support/v4/view/ah;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/aj;

    invoke-direct {v0}, Landroid/support/v4/view/aj;-><init>()V

    sput-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ai;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ai;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public static c(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->c(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public static c(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ai;->c(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ai;->d(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method
