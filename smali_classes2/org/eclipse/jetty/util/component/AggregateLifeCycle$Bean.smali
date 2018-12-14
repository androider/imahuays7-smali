.class Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;
.super Ljava/lang/Object;
.source "AggregateLifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bean"
.end annotation


# instance fields
.field final _bean:Ljava/lang/Object;

.field volatile _managed:Z

.field final synthetic this$0:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/component/AggregateLifeCycle;Ljava/lang/Object;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->this$0:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    .line 56
    iput-object p2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_bean:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$Bean;->_managed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
