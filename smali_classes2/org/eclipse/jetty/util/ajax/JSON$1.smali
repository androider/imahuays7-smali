.class Lorg/eclipse/jetty/util/ajax/JSON$1;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertible;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/ajax/JSON;

.field final synthetic val$convertor:Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$1;->this$0:Lorg/eclipse/jetty/util/ajax/JSON;

    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSON$1;->val$convertor:Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    iput-object p3, p0, Lorg/eclipse/jetty/util/ajax/JSON$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public toJSON(Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$1;->val$convertor:Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$1;->val$object:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    return-void
.end method
