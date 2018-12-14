.class Lorg/dom4j/xpath/DefaultXPath$1;
.super Ljava/lang/Object;
.source "DefaultXPath.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/dom4j/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/dom4j/xpath/DefaultXPath;

.field final synthetic val$sortValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath$1;->this$0:Lorg/dom4j/xpath/DefaultXPath;

    iput-object p2, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 291
    check-cast p1, Lorg/dom4j/Node;

    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/xpath/DefaultXPath$1;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I
    .locals 2

    .line 293
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 298
    :cond_0
    instance-of v1, p1, Ljava/lang/Comparable;

    if-eqz v1, :cond_1

    .line 299
    check-cast p1, Ljava/lang/Comparable;

    .line 301
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v1, -0x1

    if-nez p2, :cond_3

    return v1

    .line 307
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
