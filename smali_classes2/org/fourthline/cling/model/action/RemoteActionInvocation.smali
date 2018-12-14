.class public Lorg/fourthline/cling/model/action/RemoteActionInvocation;
.super Lorg/fourthline/cling/model/action/ActionInvocation;
.source "RemoteActionInvocation.java"


# instance fields
.field protected final remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionException;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 47
    iput-object p2, p0, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    .line 41
    iput-object p2, p0, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V

    .line 35
    iput-object p4, p0, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    return-void
.end method


# virtual methods
.method public getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->remoteClientInfo:Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    return-object v0
.end method
