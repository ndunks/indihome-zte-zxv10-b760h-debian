.class Landroid/support/v4/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v4/g/f;


# direct methods
.method constructor <init>(Landroid/support/v4/g/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/g/j;->a:Landroid/support/v4/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/j;->a:Landroid/support/v4/g/f;

    iget-object v0, v0, Landroid/support/v4/g/f;->d:Landroid/support/v4/g/e;

    invoke-interface {v0, p1}, Landroid/support/v4/g/e;->a(I)V

    return-void
.end method
