.class Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;
.super Ljava/lang/Object;
.source "SelectorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelAndAttachment"
.end annotation


# instance fields
.field final _attachment:Ljava/lang/Object;

.field final _channel:Ljava/nio/channels/SelectableChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 0

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;->_channel:Ljava/nio/channels/SelectableChannel;

    .line 1010
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;->_attachment:Ljava/lang/Object;

    return-void
.end method
