using ClassLibrary;

namespace TestProject
{
    [TestClass]
    public class UnitTest1
    {
            [TestClass]
            public class ClientManagerTests
            {
                [TestMethod]
                public void AddClient_ValidClient_ShouldAddClient()
                {
                    // Arrange
                    var clientManager = new ClientManager();
                    var client = new Client { IdClient = 1, FirstName = "Игнатенко Мария", Phone = "7(495)678-34-12", Address = "Москва, ул. Мира, д. 9" };

                    // Act
                    clientManager.AddClient(client);

                    // Assert
                    Assert.AreEqual(1, clientManager.GetClients().Count);
                    Assert.AreEqual(client, clientManager.GetClients()[0]);
                }

                [TestMethod]
                public void AddClient_NullClient_ShouldThrowArgumentNullException()
                {
                    // Arrange
                    var clientManager = new ClientManager();

                    // Act & Assert
                    Assert.ThrowsException<ArgumentNullException>(() => clientManager.AddClient(null));
                }

                [TestMethod]
                public void AddClient_DuplicateClient_ShouldThrowArgumentException()
                {
                    // Arrange
                    var clientManager = new ClientManager();
                    var client1 = new Client { IdClient = 1, FirstName = "Игнатенко Мария", Phone = "7(495)678-34-12", Address = "Москва, ул. Мира, д. 9" };
                    var client2 = new Client { IdClient = 1, FirstName = "Другое Имя", Phone = "7(495)679-34-12", Address = "Санкт-Петербург, ул. Ленинградская, д. 10" };
                    clientManager.AddClient(client1);

                    // Act & Assert
                    Assert.ThrowsException<ArgumentException>(() => clientManager.AddClient(client2));
                }

                [TestMethod]
                public void RemoveClient_ExistingClient_ShouldRemoveClient()
                {
                    // Arrange
                    var clientManager = new ClientManager();
                    var client = new Client { IdClient = 1, FirstName = "Игнатенко Мария", Phone = "7(495)678-34-12", Address = "Москва, ул. Мира, д. 9" };
                    clientManager.AddClient(client);

                    // Act
                    bool result = clientManager.RemoveClient(client.IdClient);

                    // Assert
                    Assert.IsTrue(result);
                    Assert.AreEqual(0, clientManager.GetClients().Count);
                }

                [TestMethod]
                public void RemoveClient_NonExistingClient_ShouldReturnFalse()
                {
                    // Arrange
                    var clientManager = new ClientManager();

                    // Act
                    bool result = clientManager.RemoveClient(999); // ID, который не существует

                    // Assert
                    Assert.IsFalse(result);
                }
            }
        }
    }

