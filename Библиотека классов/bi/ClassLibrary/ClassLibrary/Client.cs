using System;
using System.Collections.Generic;

namespace ClassLibrary;

public partial class Client
{
    public int IdClient { get; set; }

    public string FirstName { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public string? Address { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}

public class ClientManager
{
    private List<Client> clients = new List<Client>();

    public void AddClient(Client client)
    {
        if (client == null) throw new ArgumentNullException(nameof(client));
        if (clients.Any(c => c.IdClient == client.IdClient))
        {
            throw new ArgumentException("Client with the same ID already exists.");
        }
        clients.Add(client);
    }

    public bool RemoveClient(int clientId)
    {
        var client = clients.FirstOrDefault(c => c.IdClient == clientId);
        if (client != null)
        {
            clients.Remove(client);
            return true;
        }
        return false;
    }

    public List<Client> GetClients()
    {
        return clients;
    }
}