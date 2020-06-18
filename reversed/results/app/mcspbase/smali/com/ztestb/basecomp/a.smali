.class Lcom/ztestb/basecomp/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ztestb/basecomp/BaseComponentService;


# direct methods
.method constructor <init>(Lcom/ztestb/basecomp/BaseComponentService;)V
    .locals 0

    iput-object p1, p0, Lcom/ztestb/basecomp/a;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/ztestb/basecomp/BaseComponentService;->a:Lcom/ztestb/basecomp/BaseComponentServiceJni;

    invoke-virtual {v0}, Lcom/ztestb/basecomp/BaseComponentServiceJni;->BaseCompStart()I

    return-void
.end method
