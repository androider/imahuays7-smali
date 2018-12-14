.class Lorg/eclipse/jetty/http/HttpFields$5;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/http/HttpFields;->getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;
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
.field f:Lorg/eclipse/jetty/http/HttpFields$Field;

.field final synthetic this$0:Lorg/eclipse/jetty/http/HttpFields;

.field final synthetic val$field:Lorg/eclipse/jetty/http/HttpFields$Field;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->this$0:Lorg/eclipse/jetty/http/HttpFields;

    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$5;->val$field:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->val$field:Lorg/eclipse/jetty/http/HttpFields$Field;

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->f:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->f:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$5;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->f:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->f:Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 547
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->f:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-static {v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->f:Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 548
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
