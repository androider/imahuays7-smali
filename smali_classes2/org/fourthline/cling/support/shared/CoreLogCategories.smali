.class public Lorg/fourthline/cling/support/shared/CoreLogCategories;
.super Ljava/util/ArrayList;
.source "CoreLogCategories.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/seamless/swing/logging/LogCategory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0xa

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    new-instance v1, Lorg/seamless/swing/logging/LogCategory;

    const-string v2, "Network"

    const/4 v3, 0x6

    new-array v4, v3, [Lorg/seamless/swing/logging/LogCategory$Group;

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v6, "UDP communication"

    const/4 v7, 0x2

    new-array v8, v7, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 36
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v11, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    .line 37
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v9, v11, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v8}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v5, v4, v10

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v6, "UDP datagram processing and content"

    new-array v8, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 44
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v9, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v8, v10

    invoke-direct {v5, v6, v8}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v5, v4, v11

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v6, "TCP communication"

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/transport/spi/UpnpStream;

    .line 51
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v10

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/transport/spi/StreamServer;

    .line 52
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v11

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/transport/spi/StreamClient;

    .line 53
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v7

    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v5, v4, v7

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v6, "SOAP action message processing and content"

    new-array v9, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 60
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v10

    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v5, v4, v8

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v6, "GENA event message processing and content"

    new-array v9, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 67
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v10

    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    const/4 v6, 0x4

    aput-object v5, v4, v6

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v9, "HTTP header processing"

    new-array v12, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 74
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v10

    invoke-direct {v5, v9, v12}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    const/4 v9, 0x5

    aput-object v5, v4, v9

    invoke-direct {v1, v2, v4}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 31
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/shared/CoreLogCategories;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lorg/seamless/swing/logging/LogCategory;

    const-string v2, "UPnP Protocol"

    new-array v4, v6, [Lorg/seamless/swing/logging/LogCategory$Group;

    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v12, "Discovery (Notification & Search)"

    new-array v13, v7, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v14, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v15, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 85
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v14, v15, v3}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v14, v13, v10

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-string v14, "org.fourthline.cling.protocol.async"

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v3, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v3, v13, v11

    invoke-direct {v5, v12, v13}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v5, v4, v10

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "Description"

    new-array v12, v9, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 93
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v10

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;

    .line 94
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v11

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    .line 95
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v7

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 96
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v8

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 97
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v6

    invoke-direct {v3, v5, v12}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v4, v11

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "Control"

    new-array v12, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 104
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v10

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    .line 105
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v11

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/SendingAction;

    .line 106
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v7

    invoke-direct {v3, v5, v12}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v4, v7

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "GENA "

    const/16 v12, 0x9

    new-array v12, v12, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-string v14, "org.fourthline.cling.model.gena"

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v10

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 114
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v11

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    .line 115
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v7

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    .line 116
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v8

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    .line 117
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v6

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    .line 118
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v9

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    .line 119
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v14, 0x6

    aput-object v13, v12, v14

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    .line 120
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v14, 0x7

    aput-object v13, v12, v14

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    .line 121
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/16 v14, 0x8

    aput-object v13, v12, v14

    invoke-direct {v3, v5, v12}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v4, v8

    invoke-direct {v1, v2, v4}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 80
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/shared/CoreLogCategories;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lorg/seamless/swing/logging/LogCategory;

    const-string v2, "Core"

    new-array v3, v6, [Lorg/seamless/swing/logging/LogCategory$Group;

    new-instance v4, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "Router"

    new-array v12, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/transport/Router;

    .line 131
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v10

    invoke-direct {v4, v5, v12}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v4, v3, v10

    new-instance v4, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "Registry"

    new-array v12, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v14, Lorg/fourthline/cling/registry/Registry;

    .line 138
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v13, v14, v15}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v13, v12, v10

    invoke-direct {v4, v5, v12}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v4, v3, v11

    new-instance v4, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "Local service binding & invocation"

    new-array v9, v9, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-string v13, "org.fourthline.cling.binding.annotations"

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v10

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/model/meta/LocalService;

    .line 146
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v11

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-string v13, "org.fourthline.cling.model.action"

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v7

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-string v13, "org.fourthline.cling.model.state"

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v8

    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v13, Lorg/fourthline/cling/model/DefaultServiceManager;

    .line 149
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v12, v13, v14}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v12, v9, v6

    invoke-direct {v4, v5, v9}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v4, v3, v7

    new-instance v4, Lorg/seamless/swing/logging/LogCategory$Group;

    const-string v5, "Control Point interaction"

    new-array v6, v11, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-string v9, "org.fourthline.cling.controlpoint"

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v7, v9, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v4, v3, v8

    invoke-direct {v1, v2, v3}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 126
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/shared/CoreLogCategories;->add(Ljava/lang/Object;)Z

    return-void
.end method
