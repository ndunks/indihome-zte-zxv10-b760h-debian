.class public Lcommon/mcspevtmanager/McspCompCommun;
.super Ljava/lang/Object;
.source "McspCompCommun.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "McspCompCommun"


# instance fields
.field private hCompHandler:I

.field private mComName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "jnieventmanager4.4.2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "comName"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcommon/mcspevtmanager/McspCompCommun;->mComName:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public MCSP_EVTPost(I[BI)I
    .locals 1
    .param p1, "iEventId"    # I
    .param p2, "aEventPara"    # [B
    .param p3, "ParaLen"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcommon/mcspevtmanager/McspCompCommun;->McspEVTPost(I[BI)I

    move-result v0

    return v0
.end method

.method public MCSP_EVTSubscribe([II)I
    .locals 1
    .param p1, "aEvents"    # [I
    .param p2, "EventNum"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcommon/mcspevtmanager/McspCompCommun;->McspEVTSubscribe([II)I

    move-result v0

    return v0
.end method

.method public MCSP_EVTUnsubscribe([II)I
    .locals 1
    .param p1, "aEvents"    # [I
    .param p2, "EventNum"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcommon/mcspevtmanager/McspCompCommun;->McspEVTUnsubscribe([II)I

    move-result v0

    return v0
.end method

.method public MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I
    .locals 1
    .param p1, "ServiceName"    # Ljava/lang/String;
    .param p2, "Cmd"    # I
    .param p3, "aData"    # [B
    .param p4, "DataLen"    # I
    .param p5, "aReply"    # [B
    .param p6, "aReplyLen"    # [I

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p6}, Lcommon/mcspevtmanager/McspCompCommun;->McspInvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v0

    return v0
.end method

.method public MCSP_QueryService(Ljava/lang/String;)I
    .locals 1
    .param p1, "ServiceName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcommon/mcspevtmanager/McspCompCommun;->McspQueryService(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public MCSP_RegisterMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "classObj"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "EventCallBackName"    # Ljava/lang/String;
    .param p4, "ServiceCallBackName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lcommon/mcspevtmanager/McspCompCommun;->McspRegisterMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public MCSP_SrvEvt_Init()I
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcommon/mcspevtmanager/McspCompCommun;->McspSrvEvtInit()I

    move-result v0

    return v0
.end method

.method public MCSP_SrvEvt_Uninit()I
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcommon/mcspevtmanager/McspCompCommun;->McspSrvEvtUninit()I

    move-result v0

    return v0
.end method

.method public native McspEVTPost(I[BI)I
.end method

.method public native McspEVTSubscribe([II)I
.end method

.method public native McspEVTUnsubscribe([II)I
.end method

.method public native McspInvokeService(Ljava/lang/String;I[BI[B[I)I
.end method

.method public native McspQueryService(Ljava/lang/String;)I
.end method

.method public native McspRegisterMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native McspSrvEvtInit()I
.end method

.method public native McspSrvEvtUninit()I
.end method

.method public getComName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcommon/mcspevtmanager/McspCompCommun;->mComName:Ljava/lang/String;

    return-object v0
.end method
