.class Landroid/support/v4/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# instance fields
.field final synthetic a:Landroid/support/v4/g/b;


# direct methods
.method constructor <init>(Landroid/support/v4/g/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/g/d;->a:Landroid/support/v4/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/g/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/g/d;->a:Landroid/support/v4/g/b;

    iget-object v0, v0, Landroid/support/v4/g/b;->b:Landroid/support/v4/g/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/k;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/g/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/g/d;->a:Landroid/support/v4/g/b;

    iget-object v0, v0, Landroid/support/v4/g/b;->b:Landroid/support/v4/g/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/k;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method