.class public Lorg/eclipse/jetty/servlet/FilterHolder$Registration;
.super Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.source "FilterHolder.java"

# interfaces
.implements Ljavax/servlet/FilterRegistration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/FilterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Registration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder<",
        "Ljavax/servlet/Filter;",
        ">.HolderRegistration;",
        "Ljavax/servlet/FilterRegistration$Dynamic;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/FilterHolder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public varargs addMappingForServletNames(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->illegalStateIfContextStarted()V

    .line 195
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 196
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 197
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    if-eqz p2, :cond_0

    .line 200
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object p1, p1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object p1, p1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    :goto_0
    return-void
.end method

.method public varargs addMappingForUrlPatterns(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->illegalStateIfContextStarted()V

    .line 208
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 209
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 210
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    if-eqz p2, :cond_0

    .line 213
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object p1, p1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object p1, p1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    :goto_0
    return-void
.end method

.method public getServletNameMappings()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 224
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 227
    array-length v5, v4

    if-lez v5, :cond_1

    .line 228
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getUrlPatternMappings()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 239
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
