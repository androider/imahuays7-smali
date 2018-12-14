.class Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;
.super Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;
.source "AbstractPeeringConnectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

.field final synthetic val$connectionInfo:Lorg/fourthline/cling/support/model/ConnectionInfo;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;ILorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    iput-object p5, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->val$connectionInfo:Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->peerFailure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->val$connectionInfo:Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->removeConnection(I)V

    return-void
.end method
