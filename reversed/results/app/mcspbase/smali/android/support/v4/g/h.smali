.class Landroid/support/v4/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v4/g/f;


# direct methods
.method constructor <init>(Landroid/support/v4/g/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/g/h;->a:Landroid/support/v4/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/g/h;->a:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/g/h;->a:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->k()V

    goto :goto_0
.end method
