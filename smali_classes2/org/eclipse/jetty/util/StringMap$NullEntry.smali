.class Lorg/eclipse/jetty/util/StringMap$NullEntry;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/StringMap;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/StringMap;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lorg/eclipse/jetty/util/StringMap$NullEntry;->this$0:Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/StringMap;Lorg/eclipse/jetty/util/StringMap$1;)V
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/StringMap$NullEntry;-><init>(Lorg/eclipse/jetty/util/StringMap;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$NullEntry;->this$0:Lorg/eclipse/jetty/util/StringMap;

    iget-object v0, v0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$NullEntry;->this$0:Lorg/eclipse/jetty/util/StringMap;

    iget-object v0, v0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$NullEntry;->this$0:Lorg/eclipse/jetty/util/StringMap;

    iput-object p1, v1, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[:null="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$NullEntry;->this$0:Lorg/eclipse/jetty/util/StringMap;

    iget-object v1, v1, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
