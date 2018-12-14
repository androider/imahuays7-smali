.class Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;
.super Lorg/fourthline/cling/support/connectionmanager/callback/PrepareForConnection;
.source "AbstractPeeringConnectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->createConnectionWithPeer(Lorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

.field final synthetic val$direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

.field final synthetic val$failed:[Z

.field final synthetic val$localConnectionID:I

.field final synthetic val$peerService:Lorg/fourthline/cling/model/meta/Service;

.field final synthetic val$protInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;ILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;[Z)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 159
    iput-object v0, v7, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    move/from16 v0, p8

    iput v0, v7, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$localConnectionID:I

    move-object/from16 v0, p9

    iput-object v0, v7, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$protInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-object/from16 v0, p10

    iput-object v0, v7, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$peerService:Lorg/fourthline/cling/model/meta/Service;

    move-object/from16 v0, p11

    iput-object v0, v7, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    move-object/from16 v0, p12

    iput-object v0, v7, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$failed:[Z

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/connectionmanager/callback/PrepareForConnection;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->peerFailure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$failed:[Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;III)V
    .locals 9

    .line 162
    new-instance p1, Lorg/fourthline/cling/support/model/ConnectionInfo;

    iget v1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$localConnectionID:I

    iget-object v4, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$protInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$peerService:Lorg/fourthline/cling/model/meta/Service;

    .line 167
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Service;->getReference()Lorg/fourthline/cling/model/ServiceReference;

    move-result-object v5

    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    .line 169
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->getOpposite()Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    move-result-object v7

    sget-object v8, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>(IIILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ConnectionInfo$Status;)V

    .line 172
    iget-object p2, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->this$0:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->storeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method
