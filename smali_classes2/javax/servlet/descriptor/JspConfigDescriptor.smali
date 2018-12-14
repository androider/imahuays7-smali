.class public interface abstract Ljavax/servlet/descriptor/JspConfigDescriptor;
.super Ljava/lang/Object;
.source "JspConfigDescriptor.java"


# virtual methods
.method public abstract getJspPropertyGroups()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaglibs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/descriptor/TaglibDescriptor;",
            ">;"
        }
    .end annotation
.end method
