.class public final enum Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;
.super Ljava/lang/Enum;
.source "CrashRestorerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CrashRestorerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "buttonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

.field public static final enum CANCEL:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

.field public static final enum OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->CANCEL:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    new-instance v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->CANCEL:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->$VALUES:[Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    return-object v0
.end method

.method public static values()[Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->$VALUES:[Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    invoke-virtual {v0}, [Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    return-object v0
.end method
