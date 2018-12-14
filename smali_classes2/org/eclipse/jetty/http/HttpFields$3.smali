.class Lorg/eclipse/jetty/http/HttpFields$3;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/http/HttpFields;

.field final synthetic val$buffers:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$3;->this$0:Lorg/eclipse/jetty/http/HttpFields;

    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$3;->val$buffers:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$3;->val$buffers:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$3;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$3;->val$buffers:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
